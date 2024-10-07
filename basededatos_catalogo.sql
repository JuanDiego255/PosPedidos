-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-07-2024 a las 15:57:06
-- Versión del servidor: 10.6.17-MariaDB-cll-lve
-- Versión de PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `davcromc_tienda1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `about_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `about`
--

INSERT INTO `about` (`id`, `vendor_id`, `about_content`, `created_at`, `updated_at`) VALUES
(1, 1, '', '2023-07-25 05:45:37', '2024-07-13 01:46:25'),
(2, 4, '<p>ABC</p>', '2024-07-05 22:03:30', '2024-07-05 22:03:30'),
(3, 2, '<p>En [Nombre de tu sitio], nos apasiona ofrecerte las mejores experiencias gastron&oacute;micas desde la comodidad de tu hogar. Nos especializamos en preparar comidas deliciosas y frescas, asegurando calidad y sabor en cada bocado. Nuestro compromiso es brindarte un servicio r&aacute;pido y eficiente, con pedidos confirmados al instante a trav&eacute;s de WhatsApp. &iexcl;Descubre la diferencia con nosotros!</p>', '2024-07-05 22:15:58', '2024-07-09 08:01:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No	',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `city_id`, `area`, `is_deleted`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ate', 2, 1, '2023-10-06 22:06:15', '2023-10-06 22:06:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_image`
--

CREATE TABLE `banner_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banner_image`
--

INSERT INTO `banner_image` (`id`, `vendor_id`, `banner_image`, `created_at`, `updated_at`) VALUES
(7, 2, 'banner-668cb755bbef6.png', '2024-07-09 09:06:45', '2024-07-09 09:06:45'),
(8, 2, 'banner-668cb7651bb61.png', '2024-07-09 09:07:01', '2024-07-09 09:07:01'),
(9, 2, 'banner-668cb777e4c08.png', '2024-07-09 09:07:19', '2024-07-09 09:07:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `item_price` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `extras_id` varchar(255) DEFAULT NULL,
  `extras_name` varchar(255) DEFAULT NULL,
  `extras_price` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `variants_id` varchar(255) DEFAULT NULL,
  `variants_name` varchar(255) DEFAULT NULL,
  `variants_price` varchar(255) DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `vendor_id`, `user_id`, `session_id`, `item_id`, `item_name`, `item_image`, `item_price`, `tax`, `extras_id`, `extras_name`, `extras_price`, `qty`, `price`, `variants_id`, `variants_name`, `variants_price`, `is_available`, `created_at`, `updated_at`) VALUES
(343, 2, NULL, 'bEs2TPk9ngarcE0RK485E6YZc3r9w3Xsxjmk0kto', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-11-28 14:28:15', '2023-11-28 14:28:15'),
(344, 2, NULL, 'bEs2TPk9ngarcE0RK485E6YZc3r9w3Xsxjmk0kto', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '8', '0', NULL, NULL, NULL, 1, '8', NULL, NULL, NULL, 1, '2023-11-28 14:28:25', '2023-11-28 14:28:25'),
(345, 2, NULL, '2uTl2pIk0akYe1G7vxpRB7nUrySjqvunRlmJ06oG', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '8', '0', NULL, NULL, NULL, 1, '8', NULL, NULL, NULL, 1, '2023-11-29 12:44:16', '2023-11-29 12:44:16'),
(346, 2, NULL, 'EXd5VOmOom35La6dHCxO2nWKWUTSaW46IEr2TXsI', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '8', '0', NULL, NULL, NULL, 1, '8', NULL, NULL, NULL, 1, '2023-11-29 14:33:22', '2023-11-29 14:33:22'),
(349, 2, NULL, 'gpbFeEh5fmTUIl7jn5SKQTj6Oha2OfjOytUdAGPb', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-11-29 14:56:21', '2023-11-29 14:56:21'),
(350, 2, NULL, 'gd6apfhn07x2nSAQZhaJgOyC10uWOH0ys69cxcOM', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-11-29 18:35:08', '2023-11-29 18:35:08'),
(351, 2, NULL, 'wfFqHlEHXxSEZYAbsH5ysHOjW33foqGh6Qrf6lim', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-11-29 18:43:31', '2023-11-29 18:43:31'),
(352, 2, NULL, 'NjTMkpiFdQLnIQRKAc9UETRnDdviyJbFL1xAB7No', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-11-30 16:59:06', '2023-11-30 16:59:06'),
(353, 2, NULL, 'AZ6FvZspFGNzzsg5c4GCZkwOKwJ51DPmEDHlDohU', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '8', '0', NULL, NULL, NULL, 1, '8', NULL, NULL, NULL, 1, '2023-11-30 18:40:14', '2023-11-30 18:40:14'),
(355, 2, NULL, '3MGFEvcoOVpw1aORhGhKxDTnxSmidZQlwDzJmAi8', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-12-01 11:21:11', '2023-12-01 11:21:11'),
(358, 2, NULL, 'nvsuEFHGoTJNrPVzt24IaN00ACuH9SEYQYCy11xd', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '8', '0', NULL, NULL, NULL, 1, '8', NULL, NULL, NULL, 1, '2023-12-01 14:57:08', '2023-12-01 14:57:08'),
(362, 2, NULL, 'j79bHpbKBfWnmCkeWS0qJ4M1j6oOBykMZfT4GFh7', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-12-02 18:38:47', '2023-12-02 18:38:47'),
(364, 2, NULL, 'izsjf2cSgcaZv2YF9beuE6MtM7fGUExIYs08I4Ep', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-12-02 19:00:10', '2023-12-02 19:00:10'),
(365, 2, NULL, 'JnhYPysMSxPu5BOECLe4I57TSFGlEa3p3lsZtFrK', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '5', '4', '1Kg', '5', 1, '2023-12-03 12:15:30', '2023-12-03 12:15:30'),
(367, 2, NULL, 'fQx0uW09WqPh2Q4tlDRbTkLK5RKGnSgNpIfPJrwL', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-12-03 15:20:23', '2023-12-03 15:20:23'),
(368, 2, NULL, 'fQx0uW09WqPh2Q4tlDRbTkLK5RKGnSgNpIfPJrwL', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '12', '6', '3Kg', '12', 1, '2023-12-03 15:20:28', '2023-12-03 15:20:28'),
(369, 2, NULL, 'vJg1jY9J3udQH7cG55BnLtPcaat6KB0PXzwXRYDH', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '8', '5', '2Kg', '8', 1, '2023-12-04 13:25:26', '2023-12-04 13:25:26'),
(370, 2, NULL, 'WaE5TAkLljZzBeCXnWL443N23HX33YDz4sIwLdXP', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '12', '6', '3Kg', '12', 1, '2023-12-04 13:37:56', '2023-12-04 13:37:56'),
(384, 2, NULL, 'evBzayo44nRQF5khyfzRvGRqfr7EetBMSXne8ZS6', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '5', '4', '1Kg', '5', 1, '2023-12-04 20:33:13', '2023-12-04 20:33:13'),
(387, 2, NULL, 'OG2u85zqtVhDOY5zjGYgLwWjfH1rYYwQ86wM2ztO', 22, 'Gelinita', 'item-6565f8b50fadb.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2023-12-04 21:09:09', '2023-12-04 21:09:09'),
(394, 2, NULL, 'riXNziMku8RXxKObWvhEuh7aSWdGXGiqgLr9cijy', 24, 'Pollo', 'item-656e79569d96c.png', '10.5', '0', NULL, NULL, NULL, 1, '10.5', NULL, NULL, NULL, 1, '2023-12-05 01:14:23', '2023-12-05 01:14:23'),
(397, 2, NULL, 'tyEQXRmnIw4IuxFyUR7wlnpd6nyuZQmvZuzIeNBE', 24, 'Pollo', 'item-656e79569d96c.png', '10.5', '0', NULL, NULL, NULL, 1, '10.5', NULL, NULL, NULL, 1, '2023-12-05 19:41:54', '2023-12-05 19:41:54'),
(398, 2, NULL, 'pypwgrmlWMTfddJI4Xpdno5dm2RMnlbZf0iSjmX6', 24, 'Pollo', 'item-656e79569d96c.png', '10.5', '0', NULL, NULL, NULL, 1, '10.5', NULL, NULL, NULL, 1, '2023-12-06 19:21:40', '2023-12-06 19:21:40'),
(400, 2, NULL, 'mnFrOYo1iw8C0nfUalGeQ0JSJVU0kznOYkHvDHPt', 24, 'Pollo', 'item-656e79569d96c.png', '10.5', '0', NULL, NULL, NULL, 1, '10.5', NULL, NULL, NULL, 1, '2023-12-06 19:39:02', '2023-12-06 19:39:02'),
(401, 2, NULL, '1UhiJOHz6aoPbi84TB5s09q5yKlaIjpknVo7vQc0', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 5, '5', '4', '1Kg', '5', 1, '2023-12-07 11:57:17', '2023-12-07 11:57:17'),
(409, 2, NULL, 'SfuZQZPW1xFDU9zhOadK38m7yAPZQoNFAYFm3lEv', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '5', NULL, NULL, NULL, 1, '2023-12-08 23:48:29', '2023-12-09 01:07:01'),
(410, 2, NULL, 'hSZfgiiNkBSQfMfo7moHhQzcUkWvx7shWRTBElq9', 24, 'Pollo', 'item-656e79569d96c.png', '10.5', '0', NULL, NULL, NULL, 5, '10.5', NULL, NULL, NULL, 1, '2023-12-09 00:38:17', '2023-12-09 00:49:11'),
(413, 2, NULL, '6fEqkjKKHsnbg0cNPvSZqZe3SHk9bX3j3f7JMIc1', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '5', NULL, NULL, NULL, 1, '2023-12-10 00:02:32', '2023-12-10 00:06:05'),
(416, 2, NULL, 'yvk9BTSLq6bAD6gVCFCREBRTLQauVVrIQThWcHy0', 24, 'Pollo', 'item-656e79569d96c.png', '10.5', '0', NULL, NULL, NULL, 2, '10.5', NULL, NULL, NULL, 1, '2023-12-10 00:12:25', '2023-12-10 00:16:46'),
(417, 2, NULL, 'B0yoVH4ARmPTNEzzFco4VQy9VXRzYt4kycm4KDKS', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '5', '4', '1Kg', '5', 1, '2023-12-10 20:38:15', '2023-12-10 20:38:15'),
(418, 2, NULL, '5B9SsA9P0kv9tDXTQber1al8z6bexkAMU9xDPD8J', 23, 'Huevos PRO', 'item-6565f8e2e71b7.png', '5', '0', NULL, NULL, NULL, 1, '5', '4', '1Kg', '5', 1, '2023-12-11 16:50:02', '2023-12-11 16:50:02'),
(420, 2, NULL, '87Ssavy0vrPEcj2BiOWyKAj6mtuTw6LASPjY0oTO', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-05 22:06:47', '2024-04-05 22:06:47'),
(421, 2, NULL, '6bWD3FgEB7PAHkBzgeqfQAFwZGAQoyVUGO7Dz6ma', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-04-06 00:10:07', '2024-04-06 00:10:19'),
(422, 2, NULL, 'J3g6TTc28n915kILBV0JXFcEJJaBdMGujFabkWWR', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-06 00:33:22', '2024-04-06 00:33:22'),
(423, 2, NULL, 'MqNeo7jR06hTX28cS5zC8h6vAqrtsHdCZOpSregA', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-06 01:28:48', '2024-04-06 01:28:48'),
(424, 2, NULL, 'sabpW4QngtUiBTIxhAnkcz4u4KqmiPuXh854mEs0', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-06 02:28:57', '2024-04-06 02:28:57'),
(425, 2, NULL, 'hlaAy9tIvTxYfRdAJLiXsQ1LNt8DLaFNf6ZsYZop', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-06 09:09:16', '2024-04-06 09:09:16'),
(426, 2, NULL, 'hp1OONXFXO3EsA6hOQEW1z2x31vWumQ3hpDHU9X4', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-06 16:13:32', '2024-04-06 16:13:32'),
(434, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(435, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(436, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(437, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(438, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(439, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(440, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(441, 2, NULL, 'znTGIFniFOrdRkPAIxdN7JpXOsSOpRcQulRlo9Za', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-06 23:28:26', '2024-04-06 23:28:26'),
(442, 2, NULL, 'jNQ4fyyzQtN3AJnFDhJHuBAPhHwSmv9LOAUteCK7', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 11, '4', NULL, NULL, NULL, 1, '2024-04-07 00:38:01', '2024-04-07 00:40:43'),
(443, 2, NULL, 'jNQ4fyyzQtN3AJnFDhJHuBAPhHwSmv9LOAUteCK7', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-04-07 00:42:36', '2024-04-07 00:42:36'),
(444, 2, NULL, 'jNQ4fyyzQtN3AJnFDhJHuBAPhHwSmv9LOAUteCK7', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-04-07 00:42:49', '2024-04-07 00:42:49'),
(445, 2, NULL, 'jNQ4fyyzQtN3AJnFDhJHuBAPhHwSmv9LOAUteCK7', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 2, '12.5', NULL, NULL, NULL, 1, '2024-04-07 00:45:22', '2024-04-07 00:45:22'),
(446, 2, NULL, 'yykqeod9LF4peXf2JeSdIlySsP45Aokf0RKN612x', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-07 00:53:09', '2024-04-07 00:53:09'),
(447, 2, NULL, '3f2xSMCavigeucdezwPtOwwi1wJzJ9Nkeq29cHDs', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-04-07 05:21:56', '2024-04-07 05:21:56'),
(450, 2, NULL, 'FuEqI74PBaBWLAb98sQJauhuj3lWvWvbzOabGBL2', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-07 15:19:21', '2024-04-07 15:19:21'),
(452, 2, NULL, 'dVzXyvBLCJzHoExBOr9TGqIgm1y9r7hkFM9CW7RA', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-07 21:14:32', '2024-04-07 21:14:32'),
(453, 2, NULL, '3sgvAw22ZgTpTFLxol3hp5fMzXRsBgYuXDIkD7UU', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-07 22:43:02', '2024-04-07 22:43:02'),
(454, 2, NULL, '3sgvAw22ZgTpTFLxol3hp5fMzXRsBgYuXDIkD7UU', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-07 22:43:40', '2024-04-07 22:43:40'),
(455, 2, NULL, 'wBZFBLEP3VwC6Bt8YtaHe74uGvogX4xM6rasJDSH', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-07 22:57:59', '2024-04-07 22:57:59'),
(456, 2, NULL, 'fnRI990AVJGXkEFbIOOvmkrpkO5HWgN0DO3vQV7L', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-07 23:10:45', '2024-04-07 23:10:45'),
(457, 2, NULL, 'fnRI990AVJGXkEFbIOOvmkrpkO5HWgN0DO3vQV7L', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-07 23:10:47', '2024-04-07 23:10:47'),
(458, 2, NULL, 'dFLxSlcHEC07M1PK8mChPjxJUevfbEJ4oll22k0z', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-07 23:11:06', '2024-04-07 23:11:06'),
(459, 2, NULL, 'fnRI990AVJGXkEFbIOOvmkrpkO5HWgN0DO3vQV7L', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-04-07 23:12:29', '2024-04-07 23:12:29'),
(461, 2, NULL, 'RVL6S6RdLvwrtRLkk4rOTgYSeyA2gBsQQNEsGG8k', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-07 23:37:12', '2024-04-07 23:37:12'),
(462, 2, NULL, 'rULXpLOimIwyNdOcXCNFbpwRlYOidiQ6qId4NK60', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-07 23:51:44', '2024-04-07 23:51:44'),
(463, 2, NULL, 'Ebxe3nTkK0pMoYI2un1ofG21p3NnE9GWuQohsXeN', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 4, '10', NULL, NULL, NULL, 1, '2024-04-08 00:06:27', '2024-04-08 00:06:27'),
(464, 2, NULL, 'Ebxe3nTkK0pMoYI2un1ofG21p3NnE9GWuQohsXeN', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 3, '12', NULL, NULL, NULL, 1, '2024-04-08 00:06:31', '2024-04-08 00:06:31'),
(465, 2, NULL, 'd6Us0SwnKHf0IT8NmVhRrivlcuRQbjkWFF4PVnWu', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-08 00:14:44', '2024-04-08 00:14:44'),
(467, 2, NULL, 'd6Us0SwnKHf0IT8NmVhRrivlcuRQbjkWFF4PVnWu', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-08 00:14:57', '2024-04-08 00:14:57'),
(468, 2, NULL, '0rqhyxhvN1JBbUNBg6wkrVDZaf8i1nuVHNatrc5S', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-08 01:15:06', '2024-04-08 01:15:06'),
(469, 2, NULL, 'gleQUWr7FR0G6gQOTcx2yRCiyKC4KTIiiOdH0po0', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 6, '12', NULL, NULL, NULL, 1, '2024-04-08 01:27:43', '2024-04-08 01:27:43'),
(471, 2, NULL, 'IFMRUzhI2VTePnKLCwbBMfBhH42bXI676GXYj4yv', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-08 06:20:37', '2024-04-08 06:20:37'),
(472, 2, NULL, 'IFMRUzhI2VTePnKLCwbBMfBhH42bXI676GXYj4yv', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-08 06:20:46', '2024-04-08 06:20:46'),
(473, 2, NULL, '06nLpcThO8QVfxE3giBfznzCKnW3P89najqsjQWf', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-08 06:22:05', '2024-04-08 06:22:05'),
(474, 2, NULL, '06nLpcThO8QVfxE3giBfznzCKnW3P89najqsjQWf', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-08 06:22:13', '2024-04-08 06:22:13'),
(475, 2, NULL, 'CKZhtfkT3s7i6qNwxAcGEX3UEXAlXCizK8BOczFn', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-08 14:02:27', '2024-04-08 14:02:27'),
(476, 2, NULL, 'CKZhtfkT3s7i6qNwxAcGEX3UEXAlXCizK8BOczFn', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-08 14:03:05', '2024-04-08 14:03:05'),
(477, 2, NULL, 'kXhpyQnL6qLfKhlLSaBbSHo3xheJne68giXYrosh', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-08 18:43:43', '2024-04-08 18:43:43'),
(478, 2, NULL, 'kXhpyQnL6qLfKhlLSaBbSHo3xheJne68giXYrosh', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-08 18:43:56', '2024-04-08 18:43:56'),
(479, 2, NULL, 'kXhpyQnL6qLfKhlLSaBbSHo3xheJne68giXYrosh', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-08 18:44:05', '2024-04-08 18:44:05'),
(480, 2, NULL, 'kXhpyQnL6qLfKhlLSaBbSHo3xheJne68giXYrosh', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 4, '20', NULL, NULL, NULL, 1, '2024-04-08 18:44:10', '2024-04-08 18:44:10'),
(481, 2, NULL, 'PIPpvc1DK3pZETt0thoBeq1cnoGIvewp0yNAt5gv', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 3, '4', NULL, NULL, NULL, 1, '2024-04-08 19:48:19', '2024-04-08 19:53:19'),
(482, 2, NULL, 'biIULqHIGqPSLYW8d2isc69nyblzD2HKYO32jJw7', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-08 19:51:02', '2024-04-08 19:51:02'),
(483, 2, NULL, 'PIPpvc1DK3pZETt0thoBeq1cnoGIvewp0yNAt5gv', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-08 19:51:42', '2024-04-08 19:51:42'),
(484, 2, NULL, 'biIULqHIGqPSLYW8d2isc69nyblzD2HKYO32jJw7', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-08 19:52:36', '2024-04-08 19:52:36'),
(486, 2, NULL, 'biIULqHIGqPSLYW8d2isc69nyblzD2HKYO32jJw7', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-08 19:53:31', '2024-04-08 19:53:31'),
(487, 2, NULL, 'biIULqHIGqPSLYW8d2isc69nyblzD2HKYO32jJw7', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-08 19:53:36', '2024-04-08 19:53:36'),
(488, 2, NULL, 'AzsyMhbHC8FWvSb6kNHxGXZUcQCkqbBCbd5TMMVy', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-09 05:19:57', '2024-04-09 05:19:57'),
(489, 2, NULL, 'AzsyMhbHC8FWvSb6kNHxGXZUcQCkqbBCbd5TMMVy', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-09 05:20:00', '2024-04-09 05:20:00'),
(491, 2, NULL, 'Lb99ghInQnLnS47lQgDBE28CZRMysbCx5CBwSUUg', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-09 05:55:35', '2024-04-09 05:55:35'),
(492, 2, NULL, 'hBfqCHf4Gxwx2qQwkO2kdZIqtJF79tfb9hN7RaEC', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-10 22:19:05', '2024-04-10 22:19:05'),
(493, 2, NULL, 'hBfqCHf4Gxwx2qQwkO2kdZIqtJF79tfb9hN7RaEC', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-04-10 22:19:37', '2024-04-10 22:19:37'),
(494, 2, NULL, 'HA3SmYh99aL8ypBgD2J85HNPn00jNUqjlI5chavX', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-11 00:41:37', '2024-04-11 00:41:37'),
(495, 2, NULL, 'HA3SmYh99aL8ypBgD2J85HNPn00jNUqjlI5chavX', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-11 00:41:40', '2024-04-11 00:41:40'),
(497, 2, NULL, 'cKEnCCcx7O2XRHK1fPSCXaZJUuUpeqxJXGdGb4Ex', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-11 20:19:51', '2024-04-11 20:19:51'),
(498, 2, NULL, 'cKEnCCcx7O2XRHK1fPSCXaZJUuUpeqxJXGdGb4Ex', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-11 20:19:55', '2024-04-11 20:19:55'),
(499, 2, NULL, 'FFXW3SmBAgPeb4eIWkLmSKbz4mjQz49oSRjxjl2R', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-12 03:24:26', '2024-04-12 03:24:26'),
(500, 2, NULL, 'FFXW3SmBAgPeb4eIWkLmSKbz4mjQz49oSRjxjl2R', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-04-12 03:24:31', '2024-04-12 03:24:31'),
(502, 2, NULL, 'Y63C6kxFZh8iv84FrsMpMq31q1w8f5QbUnt3hs74', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-13 04:17:11', '2024-04-13 04:17:11'),
(503, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-13 12:14:18', '2024-04-13 12:14:18'),
(504, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-13 12:14:46', '2024-04-13 12:14:46'),
(505, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-13 12:15:12', '2024-04-13 12:15:12'),
(506, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-13 12:15:43', '2024-04-13 12:15:43'),
(507, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-04-13 12:15:58', '2024-04-13 12:15:58'),
(508, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-13 12:16:06', '2024-04-13 12:16:06'),
(509, 2, NULL, 'FOn1to21b6cMHtpNqMO2l5OqPCBlo7UCYvgssduf', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-13 12:17:09', '2024-04-13 12:17:09'),
(510, 2, NULL, 'TGUnLtp9M7NhLu5fduwMkLc79o6PucpTsceKhgYo', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-13 13:20:14', '2024-04-13 13:20:14'),
(511, 2, NULL, 'sBrOsJqVhlqJSEr8bKuT8mRSKFlpzkY1pWmBkAtx', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-13 20:46:36', '2024-04-13 20:46:36'),
(512, 2, NULL, 'sBrOsJqVhlqJSEr8bKuT8mRSKFlpzkY1pWmBkAtx', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-13 20:46:42', '2024-04-13 20:46:42'),
(513, 2, NULL, 'dnAcSTwkG741MthcGFovz6rQ3KAF4HzpHJcqrmEQ', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 4, '4', NULL, NULL, NULL, 1, '2024-04-13 21:17:41', '2024-04-13 21:17:41'),
(517, 2, NULL, '5Ihlrw4CaWUkquUPD9LbBzDfmqfB6CQWnqnl6PgD', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 2, '6.5', NULL, NULL, NULL, 1, '2024-04-17 01:30:49', '2024-04-17 01:30:49'),
(519, 2, NULL, 'FM2eZd73rLeiyLs0AFwC1xclrI93lZ811AMPlBbT', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-17 04:28:11', '2024-04-17 04:28:11'),
(520, 2, NULL, 'FM2eZd73rLeiyLs0AFwC1xclrI93lZ811AMPlBbT', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-17 04:28:22', '2024-04-17 04:28:22'),
(521, 2, NULL, '6m2DY7xDmeTvoWbYghAPUXtu1HKW7J2SUaDhGTS8', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-17 04:30:52', '2024-04-17 04:30:52'),
(522, 2, NULL, '6m2DY7xDmeTvoWbYghAPUXtu1HKW7J2SUaDhGTS8', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-17 04:31:06', '2024-04-17 04:31:06'),
(523, 2, NULL, '6m2DY7xDmeTvoWbYghAPUXtu1HKW7J2SUaDhGTS8', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 3, '12', NULL, NULL, NULL, 1, '2024-04-17 04:31:20', '2024-04-17 04:31:20'),
(527, 2, NULL, 'WvziXdLjVEGZb3gvhpYSA132fhuXxQVBJEvbXX1G', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 4, '10', NULL, NULL, NULL, 1, '2024-04-17 15:02:24', '2024-04-17 15:02:59'),
(529, 2, NULL, 'GN14HotJsx2d2TCUtffdo1BXJbSTbhSbZ2rXCExG', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 2, '20', NULL, NULL, NULL, 1, '2024-04-17 17:25:31', '2024-04-17 17:25:51'),
(530, 2, NULL, 'byiaV6SsYXhnXOCDSHsTCvuzTMw28fDIJFSWwBhs', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-18 10:38:56', '2024-04-18 10:38:56'),
(531, 2, NULL, 'byiaV6SsYXhnXOCDSHsTCvuzTMw28fDIJFSWwBhs', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-18 10:39:07', '2024-04-18 10:39:07'),
(532, 2, NULL, 'byiaV6SsYXhnXOCDSHsTCvuzTMw28fDIJFSWwBhs', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-18 10:39:45', '2024-04-18 10:39:45'),
(534, 2, NULL, 'lsaQii4lB2lyOGpcHxvONBJ718eFxrpyiqEVNwIT', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-20 03:16:44', '2024-04-20 03:16:44'),
(535, 2, NULL, 'i8tbz8mqaqKQGXJtMg4VeQJXUWeuOLN1mY2G4OVl', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-22 05:12:58', '2024-04-22 05:12:58'),
(536, 2, NULL, 'i8tbz8mqaqKQGXJtMg4VeQJXUWeuOLN1mY2G4OVl', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-22 05:13:02', '2024-04-22 05:13:02'),
(537, 2, NULL, '9sMuuB0rjR5RSKSovjiMuzpAwN3ccZm4WcdOvahO', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-23 03:37:51', '2024-04-23 03:37:51'),
(538, 2, NULL, 'pNM5RLkm27rvOvCLKwIh4R8JAfkGMYffTcfrhvAS', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-25 03:55:05', '2024-04-25 03:55:05'),
(539, 2, NULL, 'pNM5RLkm27rvOvCLKwIh4R8JAfkGMYffTcfrhvAS', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-25 03:55:09', '2024-04-25 03:55:09'),
(540, 2, NULL, 'pNM5RLkm27rvOvCLKwIh4R8JAfkGMYffTcfrhvAS', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-25 03:55:22', '2024-04-25 03:55:22'),
(541, 2, NULL, 'A9bYHN0xH248C49V2qTu7NPcEb9h2iN2259pv11i', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-04-25 03:57:25', '2024-04-25 03:58:50'),
(542, 2, NULL, 'A9bYHN0xH248C49V2qTu7NPcEb9h2iN2259pv11i', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-25 03:57:28', '2024-04-25 03:57:28'),
(543, 2, NULL, 'yQaYBFUPUkKHLO5vZ8bnRsnROyRghwieLTz4S8dR', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-26 05:51:51', '2024-04-26 05:51:51'),
(544, 2, NULL, 'yQaYBFUPUkKHLO5vZ8bnRsnROyRghwieLTz4S8dR', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-26 05:51:55', '2024-04-26 05:51:55'),
(546, 2, NULL, 'w0ZqBIVL8cxt64Zri5IGlfh4Kl37U4pPRikTlzLv', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-27 22:01:40', '2024-04-27 22:01:40'),
(547, 2, NULL, 'w0ZqBIVL8cxt64Zri5IGlfh4Kl37U4pPRikTlzLv', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-27 22:06:57', '2024-04-27 22:06:57'),
(555, 2, NULL, 'o5RZPvS6nAUaRpeWJvMGSgLQSo8aXHrESGGu0VCb', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-04-27 22:50:30', '2024-04-27 22:50:30'),
(556, 2, NULL, 'o5RZPvS6nAUaRpeWJvMGSgLQSo8aXHrESGGu0VCb', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-27 22:50:34', '2024-04-27 22:50:34'),
(575, 2, NULL, 'jCFGJZZ1AAqFsLWJHxStjdVMvIvxUxJaUROYptSb', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 5, '10', NULL, NULL, NULL, 1, '2024-04-28 01:21:54', '2024-04-28 01:21:54'),
(576, 2, NULL, 'jCFGJZZ1AAqFsLWJHxStjdVMvIvxUxJaUROYptSb', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-28 01:21:58', '2024-04-28 01:21:58'),
(577, 2, NULL, 'VPEvIS1BZJyYiB5c65UmUk2SVDg5z5V8KWOmou4z', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-28 01:25:04', '2024-04-28 01:25:04'),
(578, 2, NULL, 'VPEvIS1BZJyYiB5c65UmUk2SVDg5z5V8KWOmou4z', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 2, '12.5', NULL, NULL, NULL, 1, '2024-04-28 01:25:22', '2024-04-28 01:25:22'),
(579, 2, NULL, 'CrC3ZYuPgiRTR1rr7U94UgYDjShtqrRBxiDw5tSd', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 01:40:23', '2024-04-28 01:40:23'),
(581, 2, NULL, 'jYeWoFb7u7zGfs5tWbIUPGx6Xm78CQuPcuA1L7gI', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(582, 2, NULL, 'jYeWoFb7u7zGfs5tWbIUPGx6Xm78CQuPcuA1L7gI', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-28 02:01:21', '2024-04-28 02:01:21'),
(583, 2, NULL, 'N4MlHmKiOYAZM4Dts72ueuS5M227v7AIz1JT5CHc', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-28 02:13:19', '2024-04-28 02:13:19'),
(584, 2, NULL, '818cJZlKX4lCd3qQRBN0C7cWi9IeuShp342DzFi4', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 02:47:57', '2024-04-28 02:47:57'),
(585, 2, NULL, '818cJZlKX4lCd3qQRBN0C7cWi9IeuShp342DzFi4', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-28 02:48:03', '2024-04-28 02:48:03'),
(588, 2, NULL, '0VqwomFJSjGUJ7MeDzTWVzPLCmRVxpzboAe3eUUw', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-04-28 03:16:18', '2024-04-28 03:16:18'),
(592, 2, NULL, 'khB8Lpip7nrne8n1ooanawqztGNQiSiSAjIZ7jS0', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-28 03:48:48', '2024-04-28 03:48:48'),
(593, 2, NULL, 'sWUauwllfzKpGVoFF4fpF2Id37a6xg3qRypHVnzT', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 03:48:53', '2024-04-28 03:48:53'),
(600, 2, NULL, '43WYJLyuw3p5KuEfwzkWH5o2BwtxYvihAydmvw8F', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-28 15:30:21', '2024-04-28 15:30:21'),
(601, 2, NULL, '43WYJLyuw3p5KuEfwzkWH5o2BwtxYvihAydmvw8F', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-04-28 15:30:27', '2024-04-28 15:30:27'),
(602, 2, NULL, '43WYJLyuw3p5KuEfwzkWH5o2BwtxYvihAydmvw8F', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-28 15:30:29', '2024-04-28 15:30:29'),
(603, 2, NULL, '43WYJLyuw3p5KuEfwzkWH5o2BwtxYvihAydmvw8F', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 15:30:32', '2024-04-28 15:30:32'),
(604, 2, NULL, 'BOkdF4WbbYNC5GzdKOiNMxzeSowoda8U9Gs9HiBE', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 17:30:24', '2024-04-28 17:30:24'),
(606, 2, NULL, 'h6D8RofVGBDxH8MZhpfA5o44boYa13eBwbIhcLYd', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-28 19:37:28', '2024-04-28 19:37:28'),
(607, 2, NULL, 'gUILEWYlluFsBg1DmH2MpnaZ86klRfBkgK5VFXT4', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-28 19:46:00', '2024-04-28 19:46:00'),
(608, 2, NULL, 'diFvxNWc15p4JPFuyzG2gmTo005bLB5tyHRHD3R8', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 3, '10', NULL, NULL, NULL, 1, '2024-04-28 20:16:04', '2024-04-28 20:16:04'),
(609, 2, NULL, 'mK1FJZQPeBtFzfyksk2ikS50MGAbk5O1jJnnRD40', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-28 23:44:22', '2024-04-28 23:44:22'),
(610, 2, NULL, 'mK1FJZQPeBtFzfyksk2ikS50MGAbk5O1jJnnRD40', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-28 23:44:29', '2024-04-28 23:44:29'),
(612, 2, NULL, 'mK1FJZQPeBtFzfyksk2ikS50MGAbk5O1jJnnRD40', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-28 23:44:55', '2024-04-28 23:44:55'),
(613, 2, NULL, 'Y6KmgXnwunYdxe4BvetPZUsRlMlJL1NMYD7eiL39', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-04-29 00:03:49', '2024-04-29 00:03:49'),
(615, 2, NULL, 'ETuK1KqWsKZ7JPLG69eAn6rsMxUecLhZHeRAq0Ul', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-29 01:32:59', '2024-04-29 01:32:59'),
(621, 2, NULL, '5t5qLXmQYqfXirMqMdIivGBUlgRpYYW8aUInPgz9', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-04-29 03:05:27', '2024-04-29 03:05:27'),
(624, 2, NULL, 'VnUr3NKHJg860P6cWpKLsT5iDUQVWKPBkwCMFDrw', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-04-29 11:56:40', '2024-04-29 11:56:40'),
(625, 2, NULL, 'VnUr3NKHJg860P6cWpKLsT5iDUQVWKPBkwCMFDrw', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-04-29 11:56:44', '2024-04-29 11:56:44'),
(626, 2, NULL, '1W2fq7Fqek4Q0Z98V3Dl5zQgSvItvAZsVel29Fy4', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-04-29 13:53:55', '2024-04-29 13:53:55'),
(627, 2, NULL, '1W2fq7Fqek4Q0Z98V3Dl5zQgSvItvAZsVel29Fy4', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-29 13:54:00', '2024-04-29 13:54:00'),
(629, 2, NULL, 'XIztUcKerM1yLwDu1UXoPJ7foenk191nGs0PNEEF', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-29 17:12:37', '2024-04-29 17:12:37'),
(630, 2, NULL, 'ZvWbbVbuqyyw2UY2rRJ5VFGgRagdunryHRe67sR8', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 4, '12', NULL, NULL, NULL, 1, '2024-04-29 21:24:52', '2024-04-29 21:24:52'),
(633, 2, NULL, 'N8BN93048VyVuGUUyHs2ygCrYMork6Xysv3FlGoA', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-30 01:19:29', '2024-04-30 01:19:29'),
(634, 2, NULL, '0VBCAJw2CM1q71iUE7b1E4tDz8rkHjhnSsARqgfz', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-30 02:58:01', '2024-04-30 02:58:01'),
(635, 2, NULL, '0VBCAJw2CM1q71iUE7b1E4tDz8rkHjhnSsARqgfz', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-30 02:58:05', '2024-04-30 02:58:05'),
(636, 2, NULL, 'g1CKUlq5wlMrw67egEJXUOBgFZeK9FAdqIgdXIWT', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-30 03:19:11', '2024-04-30 03:19:11'),
(637, 2, NULL, 'g1CKUlq5wlMrw67egEJXUOBgFZeK9FAdqIgdXIWT', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 7, '12.5', NULL, NULL, NULL, 1, '2024-04-30 03:19:38', '2024-04-30 03:19:38'),
(638, 2, NULL, 'DmSU08HX3j25xd4RrRDHkIKEWjOuprwUCMFlRmVC', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-30 12:44:49', '2024-04-30 12:44:49'),
(639, 2, NULL, 'UT0BG5agtz29BMmoJyu68n9HKreOISzXDTKGXusc', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-04-30 14:30:02', '2024-04-30 14:30:02'),
(640, 2, NULL, 'u6ifiGIwJaDcVmYTmtEHb2yL8IARYqVUZpeWUZp3', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 3, '4', NULL, NULL, NULL, 1, '2024-04-30 14:40:23', '2024-04-30 14:40:45'),
(641, 2, NULL, 'K4v1grX4Df1Ao4wVx9hpNVLROOtQZSXlrFCTTwtv', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-04-30 14:54:08', '2024-04-30 14:55:51'),
(643, 2, NULL, 'xgUdVsh76FI0H4ex0ZeWB3bUGLMUvq2BUKN9nu6v', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-04-30 17:43:34', '2024-04-30 17:43:34'),
(644, 2, NULL, 'KpEuKzUBremFelfkkXqj0K4e5iN9NH7sBYemyvtV', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-04-30 19:19:11', '2024-04-30 19:19:11'),
(647, 2, NULL, 'poLyALhQYqUUoEvCqHW4EP7OVpzj51p9B4tcP2iu', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-04-30 23:27:58', '2024-04-30 23:27:58'),
(648, 2, NULL, 'poLyALhQYqUUoEvCqHW4EP7OVpzj51p9B4tcP2iu', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-04-30 23:28:05', '2024-04-30 23:28:05'),
(650, 2, NULL, '89DPFKiFmf2AMbcrij2gr3dLwA1sRb0bLaPhA02M', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-01 00:23:51', '2024-05-01 00:23:51'),
(651, 2, NULL, 'JkLRZacjEIpJipJwpnDwwcck3arrcsvBKkNpgGdy', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 52, '2', NULL, NULL, NULL, 1, '2024-05-01 00:49:20', '2024-05-01 00:49:58'),
(652, 2, NULL, 'JkLRZacjEIpJipJwpnDwwcck3arrcsvBKkNpgGdy', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 9, '10', NULL, NULL, NULL, 1, '2024-05-01 00:49:40', '2024-05-01 00:49:44'),
(653, 2, NULL, 'Frw0zJMn3TC2TaYZiX7TQD5XSP1inOCfuUu543dp', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-05-01 04:26:53', '2024-05-01 04:26:53'),
(654, 2, NULL, 'HghrMwM74QDINVxOVhRvKPwqUpcXLc3horWNARZe', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-01 05:24:32', '2024-05-01 05:24:32'),
(655, 2, NULL, 'HghrMwM74QDINVxOVhRvKPwqUpcXLc3horWNARZe', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-01 05:24:37', '2024-05-01 05:24:37'),
(658, 2, NULL, 'WqT2tcW1esU7gc374hk6xROrurEoqmyMXVK6GrnQ', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-05-01 18:55:54', '2024-05-01 18:55:54'),
(659, 2, NULL, 'azwZtlpzHpVoy7ilmGcPlypKHJB04CT79bRIY9WN', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-05-01 22:16:43', '2024-05-01 22:16:43'),
(661, 2, NULL, 'hSkwmbNulrLZPTmk2KwmNa75lmJjP2Y4Q03tJkNC', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-02 02:21:04', '2024-05-02 02:21:04'),
(663, 2, NULL, 'RVeLV0cmkoiLV3acAKWPGISxR4UUlHHN7qLnpBVu', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 2, '12.5', NULL, NULL, NULL, 1, '2024-05-02 03:08:02', '2024-05-02 03:08:02'),
(664, 2, NULL, 'pEAAka7gk9stHM0A1CeosgkPu54j0ghzq7nao6p6', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-02 03:10:24', '2024-05-02 03:10:24'),
(665, 2, NULL, 'loiPbi2oUAAQjeQIKTAojdQfCsDpgSLHtoHZXXsf', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-02 04:19:18', '2024-05-02 04:19:18'),
(669, 2, NULL, 'RDDZc0Fi1CJxJiIppO2MtH4hY1gUHDrjY5torYby', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-02 05:22:58', '2024-05-02 05:22:58'),
(670, 2, NULL, 'wSIiZ18XahacGE9T3Ux6dn05Zy11by559XYUDNWr', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-02 06:34:16', '2024-05-02 06:34:16'),
(671, 2, NULL, 'wSIiZ18XahacGE9T3Ux6dn05Zy11by559XYUDNWr', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-02 06:34:19', '2024-05-02 06:34:19'),
(672, 2, NULL, 'jATiwFgeDETG8nrDytiSZWqXFwAlEm0oX1jeic9l', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-02 12:09:19', '2024-05-02 12:09:19'),
(673, 2, NULL, 'GCIVIzAs5fDOATb7OGX9B2pJ8x0Nix2p3Am4996M', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-02 13:30:55', '2024-05-02 13:30:55'),
(676, 2, NULL, '5VvLHTKvedef0jVitfmBbYBdcIhOCSfDu1EsgScR', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-02 18:27:05', '2024-05-02 18:27:05'),
(677, 2, NULL, 'fqjfPuQlmyFJt59PgVcB6LDx3NK7wVBAWYwDnOJs', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-02 19:30:54', '2024-05-02 19:30:54'),
(678, 2, NULL, 'HXiBBhMKcfMZcedDe5ekFr8pXbRBfmvqfyoaKQDX', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-02 21:08:09', '2024-05-02 21:08:09'),
(679, 2, NULL, '4Hld4jtU98jNKp0eDtFQkbymrJ1I9N6ZWf1HMXXz', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 4, '12', NULL, NULL, NULL, 1, '2024-05-02 23:30:31', '2024-05-02 23:30:31'),
(683, 2, NULL, 'e86UoeUzK0tduZC93ELpc6HMeOUzHGlJSqEHTUr9', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-03 03:06:21', '2024-05-03 03:06:21'),
(684, 2, NULL, 'fCkEJsqBs5TxlvHIQtL9BybDXDnw93FTTl3zWXQq', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-03 03:12:04', '2024-05-03 03:12:04'),
(687, 2, NULL, 'nWzU93a3Ck2abesCNpaSG0YMQtj5i2dwpiEtHfV4', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-03 18:33:55', '2024-05-03 18:33:55'),
(688, 2, NULL, 'nWzU93a3Ck2abesCNpaSG0YMQtj5i2dwpiEtHfV4', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-03 18:34:01', '2024-05-03 18:34:01'),
(689, 2, NULL, 'nWzU93a3Ck2abesCNpaSG0YMQtj5i2dwpiEtHfV4', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-05-03 18:34:12', '2024-05-03 18:34:12'),
(691, 2, NULL, '6iA9hTTcc4zCF9z5PGr6IzWr2fmZG3PtsgDSh5nO', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-04 00:39:41', '2024-05-04 00:39:41'),
(692, 2, NULL, '6iA9hTTcc4zCF9z5PGr6IzWr2fmZG3PtsgDSh5nO', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-04 00:39:44', '2024-05-04 00:39:44'),
(693, 2, NULL, 'mQHybJHe03ECR6Kb1v0C2L1UpE0NSFcITtQekTB7', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-04 04:24:43', '2024-05-04 04:24:43'),
(694, 2, NULL, 'mnBUT41wSabIGzm7KqD8HEB5W9OlOjx9GYcp0ew8', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-04 05:27:16', '2024-05-04 05:27:16'),
(695, 2, NULL, 'mnBUT41wSabIGzm7KqD8HEB5W9OlOjx9GYcp0ew8', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-04 05:27:35', '2024-05-04 05:27:35'),
(697, 2, NULL, '5VDpQub9QzcbqsDrLmHbXVWCDe8FuCA37PEPkIFS', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-05 02:55:19', '2024-05-05 02:55:19'),
(698, 2, NULL, '5VDpQub9QzcbqsDrLmHbXVWCDe8FuCA37PEPkIFS', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-05 02:55:27', '2024-05-05 02:55:27'),
(699, 2, NULL, 'c9DC573OfyTh1ltzCGtPBOWMjAJImGsabrplFK4i', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-05 03:07:38', '2024-05-05 03:07:38'),
(700, 2, NULL, 'c9DC573OfyTh1ltzCGtPBOWMjAJImGsabrplFK4i', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-05 03:07:40', '2024-05-05 03:07:40'),
(701, 2, NULL, '5VDpQub9QzcbqsDrLmHbXVWCDe8FuCA37PEPkIFS', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-05 03:09:34', '2024-05-05 03:09:34'),
(702, 2, NULL, '5lvF89AuOBIIxvysgnFZBE4W7d2eKVcYqrom2pRA', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-05 03:10:07', '2024-05-05 03:10:07'),
(704, 2, NULL, '5VDpQub9QzcbqsDrLmHbXVWCDe8FuCA37PEPkIFS', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-05 03:21:42', '2024-05-05 03:21:42'),
(705, 2, NULL, '6m9AnlQb5ByYLBgmkmp6UsMOOPv9qCjklweXj3bP', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-05 08:52:54', '2024-05-05 08:52:54'),
(706, 2, NULL, '8lYZJ9X01RXLPVMoSayBKwqw6wmA05atFcxXYrVP', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-05 14:53:33', '2024-05-05 14:53:33'),
(707, 2, NULL, '8lYZJ9X01RXLPVMoSayBKwqw6wmA05atFcxXYrVP', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-05 14:54:41', '2024-05-05 14:54:41'),
(708, 2, NULL, '47IiSmkA7ISIboxSQIjNZb3I1yrkcvsx0YlsKYRg', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-05 21:02:53', '2024-05-05 21:02:53'),
(709, 2, NULL, '47IiSmkA7ISIboxSQIjNZb3I1yrkcvsx0YlsKYRg', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-05 21:02:59', '2024-05-05 21:02:59'),
(710, 2, NULL, '47IiSmkA7ISIboxSQIjNZb3I1yrkcvsx0YlsKYRg', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-05 21:03:04', '2024-05-05 21:03:04'),
(711, 2, NULL, 'TF9Itk1fSmmBEkh6IdwRhY5bFZkvX6PBXzEUVmW5', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-05 22:05:59', '2024-05-05 22:05:59'),
(712, 2, NULL, 'K0O9kq1jtYVmgzcY01V7Ejv46fF5Iydf2xl7Ok1i', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-05-06 00:23:36', '2024-05-06 00:23:36'),
(713, 2, NULL, 'K0O9kq1jtYVmgzcY01V7Ejv46fF5Iydf2xl7Ok1i', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-05-06 00:23:42', '2024-05-06 00:23:42'),
(714, 2, NULL, 'iotwFesLJ7sRhJhgllTbXjpAwiaLBypQLrzNZzVV', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-06 03:21:48', '2024-05-06 03:21:48'),
(715, 2, NULL, 'iotwFesLJ7sRhJhgllTbXjpAwiaLBypQLrzNZzVV', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-06 03:21:52', '2024-05-06 03:21:52'),
(716, 2, NULL, 'iotwFesLJ7sRhJhgllTbXjpAwiaLBypQLrzNZzVV', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-06 03:21:53', '2024-05-06 03:21:53'),
(717, 2, NULL, '0Zrm4F2IY0RMtWGPaAmHd20jg8U6ZCjFLFkVq6j1', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-05-06 03:23:42', '2024-05-06 03:23:42'),
(718, 2, NULL, 'tATZURFaK0zaxyWPJ3Rakz7zUDIxKSZM49hAHYWV', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-06 21:55:40', '2024-05-06 21:55:40'),
(721, 2, NULL, '4pcK6JmWRVuO4bLEvugXqrb4zCgPiHWSKpaVffcP', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-07 13:49:35', '2024-05-07 13:49:35');
INSERT INTO `carts` (`id`, `vendor_id`, `user_id`, `session_id`, `item_id`, `item_name`, `item_image`, `item_price`, `tax`, `extras_id`, `extras_name`, `extras_price`, `qty`, `price`, `variants_id`, `variants_name`, `variants_price`, `is_available`, `created_at`, `updated_at`) VALUES
(722, 2, NULL, 'RwTwd1N9sp3bxLUbnpdFztxVxczDNRCNm9UBGTAC', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-07 14:31:56', '2024-05-07 14:31:56'),
(723, 2, NULL, 'i18Vn4dO4i6D94syYN07a8TZxCwIa2pE1l3ULKw8', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-07 16:00:28', '2024-05-07 16:00:28'),
(728, 2, NULL, 'S93McOiHHHM5dc8rOCCxwom36gTWyekVT5bMWr87', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-05-08 02:06:56', '2024-05-08 02:06:56'),
(729, 2, NULL, 'S93McOiHHHM5dc8rOCCxwom36gTWyekVT5bMWr87', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-08 02:07:00', '2024-05-08 02:07:00'),
(731, 2, NULL, 'S93McOiHHHM5dc8rOCCxwom36gTWyekVT5bMWr87', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-08 02:08:17', '2024-05-08 02:08:17'),
(734, 2, NULL, 'bODudAtyIVLMLdqlYaTOj7qVOjrOwVtjunzxONmP', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-08 03:08:51', '2024-05-08 03:08:51'),
(735, 2, NULL, 'cWmq2t6j0731zzAJSSUnT5bYELUj3tgSvxjbHdbO', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-08 15:22:19', '2024-05-08 15:22:19'),
(736, 2, NULL, 'cWmq2t6j0731zzAJSSUnT5bYELUj3tgSvxjbHdbO', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-08 15:23:04', '2024-05-08 15:23:04'),
(737, 2, NULL, '6cFlRFaJdzNXFuAyuzuolNok2vNshiAChGGwmtrF', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-08 15:24:10', '2024-05-08 15:24:10'),
(740, 2, NULL, 'uehgunO7lEzkcd4MCeu70Z4e4RveyCkgdpeTZ38J', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 2, '20', NULL, NULL, NULL, 1, '2024-05-08 20:28:28', '2024-05-08 20:28:31'),
(741, 2, NULL, 'vDQCbRVofb3cgb11EiXG70epSUR7lFfOfgsHRDBH', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-08 21:41:28', '2024-05-08 21:41:28'),
(743, 2, NULL, 'snt2cXTmIl9yMUetoroWQnZonZwH2i1qSMhuAKer', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-08 22:32:25', '2024-05-08 22:32:25'),
(744, 2, NULL, 'snt2cXTmIl9yMUetoroWQnZonZwH2i1qSMhuAKer', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-08 22:32:30', '2024-05-08 22:32:30'),
(748, 2, NULL, 'rGWPhA3IcN4svNbXiy0TuItNcKDQQ5vTjKs5swKC', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-08 23:19:49', '2024-05-08 23:19:49'),
(749, 2, NULL, 'rGWPhA3IcN4svNbXiy0TuItNcKDQQ5vTjKs5swKC', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-08 23:19:55', '2024-05-08 23:19:55'),
(751, 2, NULL, '1swFe2Dz2oterjRLWlOXbu8X72mHsCSG914aSDOW', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-08 23:31:45', '2024-05-08 23:31:45'),
(752, 2, NULL, '1swFe2Dz2oterjRLWlOXbu8X72mHsCSG914aSDOW', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-05-09 00:21:02', '2024-05-09 00:21:02'),
(753, 2, NULL, 'or7wdVwDscb6kjrIkLfmautq8JXGXWJzfXNOq2DP', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-09 02:32:25', '2024-05-09 02:32:25'),
(755, 2, NULL, 'dfiWFxUYS8EtMsmTHtquian1WKtQXY4ltY9tJAf9', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-09 04:47:28', '2024-05-09 04:47:28'),
(767, 2, NULL, 'kozH3NHo6rVXjROkhkEo1z4kGR82btcaCfhVn0GP', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-09 19:10:38', '2024-05-09 19:10:38'),
(778, 2, NULL, 'l4GvUZRwcXCS6kr1laITsfL5qLMXaTib0qnP4gMh', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-09 20:19:26', '2024-05-09 20:19:26'),
(779, 2, NULL, 'l4GvUZRwcXCS6kr1laITsfL5qLMXaTib0qnP4gMh', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-09 20:20:06', '2024-05-09 20:20:06'),
(783, 2, NULL, 'BZZ1J4A1hHU50ZfWAqTQYJVY3EB86MrqLeBIlckP', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 1, '2024-05-09 21:37:17', '2024-05-09 21:37:17'),
(785, 2, NULL, 'UuSIqK7jxYogFU8OrJy6mft2RBoEvzfRODNfDtBg', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-05-10 01:15:14', '2024-05-10 01:15:59'),
(786, 2, NULL, 'PkHUHHI7XM6F2qBcJq7d9aoRnXcN18XhBcpfr5xw', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-05-10 01:43:20', '2024-05-10 01:43:20'),
(787, 2, NULL, 'Y6Iml1ClJknuXOUBD7N4v1k5WoEV9T6lokA6Z11r', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 6, '10', NULL, NULL, NULL, 1, '2024-05-10 02:10:39', '2024-05-10 02:10:39'),
(788, 2, NULL, 'ErOKgYVDd8o1NrtUuVZGxbDi1W5KG6d3tssQc7iR', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 3, '10', NULL, NULL, NULL, 1, '2024-05-10 02:19:31', '2024-05-10 02:19:31'),
(789, 2, NULL, 'WroTrm5rr1qzBlTSR8XZxG6vlpjQPow4vnwLbH8d', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-10 07:24:08', '2024-05-10 07:24:08'),
(790, 2, NULL, 'xWovq90aitzTovVfciTeqCwv1jPL7UFXAG2uEWv8', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-10 14:30:27', '2024-05-10 14:30:44'),
(791, 2, NULL, 'zmqw2uMdqgzZyR4STwxGjLXMGwcmV0ksB9gjoRe8', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-10 15:11:36', '2024-05-10 15:11:36'),
(793, 2, NULL, 'XaWiawWkV639d3sMndP5a2Cs4FtYmtym413FEbPp', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-10 16:37:03', '2024-05-10 16:37:03'),
(794, 2, NULL, 'FWSCfGLa0pQv3rZo6EINBQMXt0ppXj1kOVe6AFO5', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-10 16:42:51', '2024-05-10 16:42:51'),
(795, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-05-10 17:12:25', '2024-05-10 17:12:25'),
(796, 2, NULL, 'glxOdvWuVieUcus9GZZ5LH9L3Nu4AZ8lPtYpM1ty', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-10 17:13:20', '2024-05-10 17:13:20'),
(798, 2, NULL, 'dZdFAEWbvNVXhwudzK4PWMAXwlptGPsALJfdIvvd', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-10 17:58:44', '2024-05-10 17:58:44'),
(799, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-10 18:53:20', '2024-05-10 18:53:20'),
(800, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-10 18:54:33', '2024-05-10 18:54:33'),
(801, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-10 18:54:36', '2024-05-10 18:54:36'),
(803, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-10 18:54:46', '2024-05-10 18:54:46'),
(804, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-10 18:54:49', '2024-05-10 18:54:49'),
(805, 2, NULL, 'kG4GYuHCvfDcaOLzkN5DziPPqXeb4CuXvMuoOPTY', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-10 18:54:53', '2024-05-10 18:54:53'),
(806, 2, NULL, 'UQkU4pOcKYOM7tjO54Y6utPoAMRO5duOwbPDtcCK', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-10 20:34:16', '2024-05-10 20:34:16'),
(808, 2, NULL, 'yof30OroyMrxLewhmwmUViGI30ffXlaJRnCUUhph', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-11 01:49:50', '2024-05-11 01:49:50'),
(809, 2, NULL, 'vybcVyfXUezQtSIbNRfsoMuJGS97620b5dBEcpEd', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-11 03:11:38', '2024-05-11 03:11:38'),
(810, 2, NULL, 'vybcVyfXUezQtSIbNRfsoMuJGS97620b5dBEcpEd', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-11 03:11:59', '2024-05-11 03:11:59'),
(811, 2, NULL, '2YSBAjNxoLkOdUFoBLiKcS5S5H2dOkq5matiYEXi', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-11 04:16:05', '2024-05-11 04:16:05'),
(814, 2, NULL, 'WEQbxlP4GL0vmCh5HF2iZXDbghbKffLAzCwm8pp2', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-12 03:28:23', '2024-05-12 03:28:23'),
(815, 2, NULL, 'eruJ1LL3PRCtAk2OZQncYxZs95C003HMUmNtmP1U', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-12 20:26:35', '2024-05-12 20:26:35'),
(817, 2, NULL, 'r07vb3UpYZjPAUPVIorEh7fCwSnewhhqXaGg45P7', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-12 21:34:21', '2024-05-12 21:34:21'),
(818, 2, NULL, 'kQnVK8ADi5wgBqLy6HSGx0oIcBNUCOqmlZyOc0eV', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-13 08:17:23', '2024-05-13 08:17:23'),
(819, 2, NULL, 'kQnVK8ADi5wgBqLy6HSGx0oIcBNUCOqmlZyOc0eV', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-05-13 08:17:35', '2024-05-13 08:17:35'),
(820, 2, NULL, 'BelHhhbfwbgZFac68Zhvvm5OIUveOhrMQygLn3Mn', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-13 13:00:06', '2024-05-13 13:00:06'),
(822, 2, NULL, 'Sdxz8QWlllGzYXsitTYygQmSXORyWl8XCgpbQMkw', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-13 13:28:10', '2024-05-13 13:28:10'),
(823, 2, NULL, 'uhMf07NegVborwBZKuRKpeJqkwsHgWiUhZnn55UL', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-13 14:10:53', '2024-05-13 14:10:53'),
(824, 2, NULL, 'QT7KZvX7WzsP3YPGZOeSxK2G1SJblNYiBgCCix1U', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-13 14:50:29', '2024-05-13 14:50:29'),
(825, 2, NULL, 'hjOphQZv0Kd6PAEp9FQgk80o5MnAQnrSYh8MgkHm', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-05-13 16:07:50', '2024-05-13 16:07:50'),
(826, 2, NULL, 'hjOphQZv0Kd6PAEp9FQgk80o5MnAQnrSYh8MgkHm', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 4, '6.5', NULL, NULL, NULL, 1, '2024-05-13 16:07:57', '2024-05-13 16:07:57'),
(827, 2, NULL, 'MQSPp4oNc804rfxhf538FRtX8ZYzUaeHh6J1F4N0', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-05-13 16:12:53', '2024-05-13 16:13:02'),
(828, 2, NULL, 'QiSdTJjx0zPpkIonAnv9ZUePoJDM8lh63CtqWCVv', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-13 19:48:50', '2024-05-13 19:48:50'),
(831, 2, NULL, '5ICYhPf66i7fghq7bDnhj9dqcUPvr7cVmrLAO8FE', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-16 12:26:05', '2024-05-16 12:26:05'),
(833, 2, NULL, '63whpTvxkeiTUCv6lX8iGjesrp43yLAMuPNfjDgq', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-16 18:49:48', '2024-05-16 18:49:48'),
(834, 2, NULL, 'ClIrFNGjexTDr7Sk65FUk4YITcUdYwwte4ypIYKF', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-16 22:13:44', '2024-05-16 22:13:44'),
(835, 2, NULL, 'nFLLyKBGG6gwtHQkIkAUjkqEoqZbnhjnCnnYi7fs', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-17 14:51:30', '2024-05-17 14:51:30'),
(836, 2, NULL, 'nFLLyKBGG6gwtHQkIkAUjkqEoqZbnhjnCnnYi7fs', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-17 17:38:12', '2024-05-17 17:38:12'),
(837, 2, NULL, 'OUAHOi5OB8yNt2UcV40EtDiu0hTpobIVJjIXen3G', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-18 11:49:28', '2024-05-18 11:49:28'),
(838, 2, NULL, 'lZAhCZFSSZUwXoM4FHKjsrq1s9QxNEqyY0RPkHmN', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-18 23:17:54', '2024-05-18 23:17:54'),
(839, 2, NULL, 'NmnZlaRTJ37qEWW5mYpMrzxG7XB8473P5KCrgUE9', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-18 23:19:13', '2024-05-18 23:19:13'),
(840, 2, NULL, 'lZAhCZFSSZUwXoM4FHKjsrq1s9QxNEqyY0RPkHmN', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-18 23:19:53', '2024-05-18 23:19:53'),
(841, 2, NULL, 'dgMWyeBtDMayhIUTNXSDmzwZGpd2kKGXiy256EPL', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-18 23:20:49', '2024-05-18 23:20:49'),
(842, 2, NULL, 'sJRNWxYK0oSDuM7lOK7s09zwxTtZKFUxz9FDKJvI', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-18 23:21:52', '2024-05-18 23:21:52'),
(843, 2, NULL, 'OVxnkoIiAQUU0MfSja3ts7XngA1Y5xtGhGgMwDGz', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-05-18 23:29:03', '2024-05-18 23:29:03'),
(844, 2, NULL, 'OVxnkoIiAQUU0MfSja3ts7XngA1Y5xtGhGgMwDGz', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-05-18 23:29:07', '2024-05-18 23:29:07'),
(845, 2, NULL, 'OVxnkoIiAQUU0MfSja3ts7XngA1Y5xtGhGgMwDGz', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-05-18 23:29:40', '2024-05-18 23:29:40'),
(847, 2, NULL, 'OVxnkoIiAQUU0MfSja3ts7XngA1Y5xtGhGgMwDGz', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-18 23:30:41', '2024-05-18 23:30:41'),
(848, 2, NULL, 'OVxnkoIiAQUU0MfSja3ts7XngA1Y5xtGhGgMwDGz', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-18 23:30:47', '2024-05-18 23:30:47'),
(849, 2, NULL, 'NmnZlaRTJ37qEWW5mYpMrzxG7XB8473P5KCrgUE9', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-18 23:32:03', '2024-05-18 23:32:03'),
(850, 2, NULL, 'Vd8xpZ5Er16X7Uj2zGNrR0xipqMyeM4lFSJ7GlCT', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-19 12:20:55', '2024-05-19 12:20:55'),
(851, 2, NULL, 'slFQSYrWCnBYxoA8oCMdFaGFtjNiYdCIwDacseep', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-19 16:43:32', '2024-05-19 16:43:32'),
(852, 2, NULL, 'slFQSYrWCnBYxoA8oCMdFaGFtjNiYdCIwDacseep', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-19 16:43:39', '2024-05-19 16:43:39'),
(853, 2, NULL, 'slFQSYrWCnBYxoA8oCMdFaGFtjNiYdCIwDacseep', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-19 16:43:43', '2024-05-19 16:43:43'),
(854, 2, NULL, 'slFQSYrWCnBYxoA8oCMdFaGFtjNiYdCIwDacseep', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 3, '2.4', NULL, NULL, NULL, 1, '2024-05-19 16:44:08', '2024-05-19 16:44:08'),
(855, 2, NULL, 'slFQSYrWCnBYxoA8oCMdFaGFtjNiYdCIwDacseep', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-19 17:02:01', '2024-05-19 17:02:01'),
(863, 2, NULL, '0niyRsw6NIINRtYLHzbAmEm8Om5APiTqfFqSo7a1', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-20 18:13:25', '2024-05-20 18:13:25'),
(867, 2, NULL, 'RzjlP4MZJ3LIWLo93OsJMKkMbjUFXklmX6uNe9DL', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 4, '10', NULL, NULL, NULL, 1, '2024-05-20 18:56:52', '2024-05-20 18:56:52'),
(870, 2, NULL, '0gLF7A1e8g6fD8VTrdYJqKXP73Jsov17T2gRDVVQ', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-20 19:47:30', '2024-05-20 19:47:30'),
(874, 2, NULL, 'TWJn9N9ztTzkH7ak4WWp0TSTnqnAJmvKXYcibAPQ', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-20 20:45:51', '2024-05-20 20:45:51'),
(877, 2, NULL, 'Ox0ILHx1YjUMhI2F7Vs5PS06nWSEGnfUHwST1UzD', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-20 22:25:50', '2024-05-20 22:25:50'),
(879, 2, NULL, 'O5p7OKEyi8EsVG8y90eASOTDl0krfOxZnXSBdnco', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-21 00:04:24', '2024-05-21 00:04:24'),
(880, 2, NULL, 'O5p7OKEyi8EsVG8y90eASOTDl0krfOxZnXSBdnco', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-21 00:04:29', '2024-05-21 00:04:29'),
(882, 2, NULL, 'nlMiyEsj5FJW1Q71IsyywJNAKg8CglD2tCI8LacJ', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-21 00:31:06', '2024-05-21 00:31:06'),
(883, 2, NULL, '9knXK31umxv7NWIQ6P5oU3ChvZe10JQxhqhl2OBC', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-21 00:45:54', '2024-05-21 00:45:54'),
(884, 2, NULL, '9knXK31umxv7NWIQ6P5oU3ChvZe10JQxhqhl2OBC', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-21 00:45:56', '2024-05-21 00:45:56'),
(885, 2, NULL, '9knXK31umxv7NWIQ6P5oU3ChvZe10JQxhqhl2OBC', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-21 00:46:00', '2024-05-21 00:46:00'),
(887, 2, NULL, 'ragNX4kiHZsHdy1qGeHpGcxiOCnS9SHlcjKG2irJ', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-21 15:47:53', '2024-05-21 15:47:53'),
(888, 2, NULL, 'ragNX4kiHZsHdy1qGeHpGcxiOCnS9SHlcjKG2irJ', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-21 15:48:00', '2024-05-21 15:48:00'),
(889, 2, NULL, 'PUHcWGONDCaez9J14TFV1i1OpVaRvSgWHckMGsgt', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-21 16:18:27', '2024-05-21 16:18:27'),
(890, 2, NULL, 'PUHcWGONDCaez9J14TFV1i1OpVaRvSgWHckMGsgt', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-05-21 16:18:41', '2024-05-21 16:18:41'),
(895, 2, NULL, 'HY3pd2hfFAxCjFb5phwDfHaJoXULUkgUVE2Bnars', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-22 19:23:59', '2024-05-22 19:23:59'),
(896, 2, NULL, 'HY3pd2hfFAxCjFb5phwDfHaJoXULUkgUVE2Bnars', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-05-22 19:24:02', '2024-05-22 19:24:02'),
(899, 2, NULL, '3imbZfzhRMSuLFUE8DUOWJYiFMg3PWV8lAmYlLYZ', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-23 03:32:54', '2024-05-23 03:32:54'),
(900, 2, NULL, '3imbZfzhRMSuLFUE8DUOWJYiFMg3PWV8lAmYlLYZ', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-23 03:32:57', '2024-05-23 03:32:57'),
(901, 2, NULL, '3imbZfzhRMSuLFUE8DUOWJYiFMg3PWV8lAmYlLYZ', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-23 03:32:59', '2024-05-23 03:32:59'),
(902, 2, NULL, '93ySqsXc6Zv91p9jZV3K9WXDxBRE3FOxMH2x8oLM', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-24 20:14:15', '2024-05-24 20:14:15'),
(903, 2, NULL, '93ySqsXc6Zv91p9jZV3K9WXDxBRE3FOxMH2x8oLM', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-24 20:14:18', '2024-05-24 20:14:18'),
(904, 2, NULL, '93ySqsXc6Zv91p9jZV3K9WXDxBRE3FOxMH2x8oLM', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-05-24 20:14:22', '2024-05-24 20:14:22'),
(905, 2, NULL, 'xfgCw01cZLqAmWdoB5BzWTviEeL6IoMp3HmWYeCE', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-25 20:20:13', '2024-05-25 20:20:13'),
(906, 2, NULL, 'xfgCw01cZLqAmWdoB5BzWTviEeL6IoMp3HmWYeCE', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-05-25 20:20:16', '2024-05-25 20:20:16'),
(907, 2, NULL, 'xfgCw01cZLqAmWdoB5BzWTviEeL6IoMp3HmWYeCE', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-05-25 20:20:22', '2024-05-25 20:20:22'),
(908, 2, NULL, '3GWStP1t2I8RO5b9iVPlk6xePnSPgAqBpLXZ0Rjs', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-05-31 16:28:03', '2024-05-31 16:28:03'),
(910, 2, NULL, 'aEx7GxSxHHDlmktEo8Aw1wi4m21wH3aTWk6L3wHA', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-02 15:22:33', '2024-06-02 15:22:33'),
(911, 2, NULL, 'FBPtsOUhha0JVJmBr9r5G088236Ay38lOWffq2it', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-06-03 21:48:04', '2024-06-03 21:48:04'),
(915, 2, NULL, 'JaMgaN9pe0Prrz9LotbVpt9HDda28eURRk7GBIGe', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-03 22:41:26', '2024-06-03 22:41:26'),
(916, 2, NULL, 'PnucGrWjmyWiKYGNty74WIdOce9D1JjLE9uI5haS', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-03 23:25:22', '2024-06-03 23:25:22'),
(917, 2, NULL, 'HZDGExeEeCqPU2MQcGQ7KwTCTxVdHHhijciPBuv0', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-03 23:36:06', '2024-06-03 23:36:06'),
(918, 2, NULL, 'HZDGExeEeCqPU2MQcGQ7KwTCTxVdHHhijciPBuv0', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-06-03 23:36:11', '2024-06-03 23:36:11'),
(919, 2, NULL, 'eUWpmJ1UU3UbhrAyocXeXZphRwDQ0she74yq0tuf', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-04 00:58:48', '2024-06-04 00:58:48'),
(920, 2, NULL, 'eUWpmJ1UU3UbhrAyocXeXZphRwDQ0she74yq0tuf', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-04 00:58:56', '2024-06-04 00:58:56'),
(921, 2, NULL, 'U6YVDRK5ypVRz5haemlkCTOCXEvv3tESVTnox3gp', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 3, '2', NULL, NULL, NULL, 1, '2024-06-04 01:21:21', '2024-06-04 01:21:21'),
(922, 2, NULL, 'U6YVDRK5ypVRz5haemlkCTOCXEvv3tESVTnox3gp', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 1, '2024-06-04 01:21:39', '2024-06-04 01:21:39'),
(923, 2, NULL, 'M8RwNLVrkOSc05fYKYvrgFAtvT4J90axbaWhtR5g', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-05 16:29:43', '2024-06-05 16:29:43'),
(924, 2, NULL, 'G1Fm9wPLqQAWnBtjLMlWQ0XCUZ2OFSUXC7DoXVRA', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-05 20:55:38', '2024-06-05 20:55:38'),
(925, 2, NULL, 'G1Fm9wPLqQAWnBtjLMlWQ0XCUZ2OFSUXC7DoXVRA', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-05 20:55:41', '2024-06-05 20:55:41'),
(926, 2, NULL, 'G1Fm9wPLqQAWnBtjLMlWQ0XCUZ2OFSUXC7DoXVRA', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-05 20:55:43', '2024-06-05 20:55:43'),
(927, 2, NULL, 'G1Fm9wPLqQAWnBtjLMlWQ0XCUZ2OFSUXC7DoXVRA', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-05 20:55:46', '2024-06-05 20:55:46'),
(929, 2, NULL, 'E5SRwJVu6W6WYdDdOozbZZVDCj4jRVuBKygMwmuV', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-09 16:49:31', '2024-06-09 16:49:31'),
(930, 2, NULL, 'C15EM9gX6lAXtrSePIjovURhO09K5OMiVwGVSH9X', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-11 00:23:32', '2024-06-11 00:23:32'),
(931, 2, NULL, 'lgj77aaMbBsK8jFnKpkKoNzvGBfrxV5DA7ak8PyV', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-06-12 17:08:08', '2024-06-12 17:08:08'),
(932, 2, NULL, 'cVIRjuI0J9TFzsiapzYKntFoJsyX1W5sRCvIiQw2', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-06-13 19:01:42', '2024-06-13 19:01:42'),
(933, 2, NULL, '6nUqRYq0lEnpvgeBW05KjD8tBt6m3HdGNL9Su9rB', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 2, '10', NULL, NULL, NULL, 1, '2024-06-15 18:00:42', '2024-06-15 18:00:42'),
(934, 2, NULL, 'Etz8spjO03ms94prMbbm8y4SsaVNwXcVpz3ZVHvN', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-15 20:36:49', '2024-06-15 20:36:49'),
(935, 2, NULL, 'Etz8spjO03ms94prMbbm8y4SsaVNwXcVpz3ZVHvN', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-15 20:39:17', '2024-06-15 20:39:17'),
(937, 2, NULL, 'CVjttTYg1IfXsuFjkpGGuIvn8aNwRHvTSHgWKaMd', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-16 00:03:08', '2024-06-16 00:03:08'),
(938, 2, NULL, 'z7lpdE681KzByAq5yg8c7uDGYF11TKi6zol9AU7i', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-16 00:10:48', '2024-06-16 00:10:48'),
(939, 2, NULL, 'z7lpdE681KzByAq5yg8c7uDGYF11TKi6zol9AU7i', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-16 00:10:51', '2024-06-16 00:10:51'),
(940, 2, NULL, '0dlLAwXtaJDhM7HqnCvrQcncGIuANpw6MX1wLO0t', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-16 00:25:12', '2024-06-16 00:25:12'),
(942, 2, NULL, 'FEl1RTay4fDrxleF8vq43S2u9qAcrf0w2QKU6H7p', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-16 14:28:07', '2024-06-16 14:28:07'),
(948, 2, NULL, 'DQTMOF2iTgDFLaF4IDYUiYT4MQQJ6riJnMoZivEk', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-16 19:42:29', '2024-06-16 19:42:29'),
(949, 2, NULL, '92dJQx0K5ErvpEnKpAe0DA48hqh00m3spkbAxTLb', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-06-16 19:44:08', '2024-06-16 19:44:08'),
(951, 2, NULL, 'zxlfsZj8w4jCUw4ryL2zi6K90KdbPAshGp0vR3Z3', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-06-16 19:46:46', '2024-06-16 19:46:46'),
(952, 2, NULL, 'hkyrIhO1VSTnDtb05FoLpPsIzgHSAYOzOcd0ID0G', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-06-16 20:12:55', '2024-06-16 20:12:55'),
(954, 2, NULL, '9e6LUsNsNoYJx1yIQJKgrVOQVSbhCrReWzbS9YJF', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-16 20:36:26', '2024-06-16 20:36:26'),
(955, 2, NULL, '9e6LUsNsNoYJx1yIQJKgrVOQVSbhCrReWzbS9YJF', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-16 20:36:32', '2024-06-16 20:36:32'),
(958, 2, NULL, 'NbNNG7oo0Tpa3KPEhOYMEVvhu3TWixocDeovLmDI', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-16 20:44:58', '2024-06-16 20:44:58'),
(959, 2, NULL, 'fQorC9SuQSPmcnsDU9oxbBwfaC7Xsx8hVbYhWDf2', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-06-16 20:53:37', '2024-06-16 20:53:37'),
(960, 2, NULL, 'J5nSV4kZmeqye7Dxb83IwRxTpGJoI1dADls9NTps', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-16 23:36:55', '2024-06-16 23:36:55'),
(962, 2, NULL, '8CZxlRCP27tk8kTdEC66YY4UMakRG6RQL3PO6ddQ', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-17 01:00:33', '2024-06-17 01:00:33'),
(963, 2, NULL, '8CZxlRCP27tk8kTdEC66YY4UMakRG6RQL3PO6ddQ', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-17 01:00:41', '2024-06-17 01:00:41'),
(964, 2, NULL, '8CZxlRCP27tk8kTdEC66YY4UMakRG6RQL3PO6ddQ', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 1, '2.4', NULL, NULL, NULL, 1, '2024-06-17 01:00:59', '2024-06-17 01:00:59'),
(965, 2, NULL, '8CZxlRCP27tk8kTdEC66YY4UMakRG6RQL3PO6ddQ', 34, 'Gol Organica', 'item-6610a80823e13.png', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-06-17 01:01:09', '2024-06-17 01:01:09'),
(966, 2, NULL, '8CZxlRCP27tk8kTdEC66YY4UMakRG6RQL3PO6ddQ', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-17 01:01:41', '2024-06-17 01:01:41'),
(976, 2, NULL, 'x1JSUSKFidjgSF0M6sefHJb4HAUuyNMpDLyevyW9', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 6, '12', NULL, NULL, NULL, 1, '2024-06-17 02:58:35', '2024-06-17 02:58:35'),
(986, 2, NULL, 'iwqu0eLyDfedpP5YczJtX92grZQANZyX0wP72mQ4', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-17 03:57:32', '2024-06-17 03:57:32'),
(987, 2, NULL, 'iwqu0eLyDfedpP5YczJtX92grZQANZyX0wP72mQ4', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-17 03:57:38', '2024-06-17 03:57:38'),
(988, 2, NULL, 'Qyd5WLwe21rtdyHSQOY51mCw5vwfr1GmE2JdT9xC', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-17 11:28:18', '2024-06-17 11:28:18'),
(990, 2, NULL, 'a98dhU7EtYr383YqGlenisrR19vuUq4CNaMSrQCp', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-17 13:16:33', '2024-06-17 13:16:33'),
(991, 2, NULL, 'a98dhU7EtYr383YqGlenisrR19vuUq4CNaMSrQCp', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-17 13:16:40', '2024-06-17 13:16:40'),
(992, 2, NULL, 'XGoxbAWJGg1YYuiCiRzXbcSEhhR1WOow8k7PwOEM', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-17 14:20:43', '2024-06-17 14:20:43'),
(993, 2, NULL, 'XGoxbAWJGg1YYuiCiRzXbcSEhhR1WOow8k7PwOEM', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-17 14:20:47', '2024-06-17 14:20:47'),
(996, 2, NULL, '18h2jHs0cshT2mERruTFVdhEeXCsrMzwRDslFaHh', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-17 17:11:11', '2024-06-17 17:11:11'),
(997, 2, NULL, '18h2jHs0cshT2mERruTFVdhEeXCsrMzwRDslFaHh', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 2, '12.5', NULL, NULL, NULL, 1, '2024-06-17 17:11:23', '2024-06-17 17:11:23'),
(998, 2, NULL, 'mMWGdv1ASHJVpd0Ua71KYIAjXiuSHaQUllc5f07W', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-17 18:59:19', '2024-06-17 18:59:19'),
(999, 2, NULL, 'w3FLquhV5x4iSgtGLXZ2oQX34rqYvjkPrGKIhxz2', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-06-17 19:00:52', '2024-06-17 19:00:52'),
(1000, 2, NULL, 'Hwn8i4cTOKghj4p4GnCYHaFyr4zRGIbi97Z0aUV8', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-06-17 20:37:45', '2024-06-17 20:37:45'),
(1002, 2, NULL, 'ZdSac5GtYse5JZOfSUUBrnFzQ7myKHU3KMX9hlBh', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-17 20:44:39', '2024-06-17 20:44:39'),
(1003, 2, NULL, 'S0gkMRqpzMk8X3Fzj2Yt29PLfrvMtpM0jrYGf4kL', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-17 21:04:05', '2024-06-17 21:04:05'),
(1004, 2, NULL, 'S0gkMRqpzMk8X3Fzj2Yt29PLfrvMtpM0jrYGf4kL', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-17 21:04:12', '2024-06-17 21:04:12'),
(1005, 2, NULL, 'IVcf6KEUQYMxEw33P1BVozuWsllL1uoLUwDAQODT', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-17 21:46:42', '2024-06-17 21:46:42'),
(1006, 2, NULL, 'IVcf6KEUQYMxEw33P1BVozuWsllL1uoLUwDAQODT', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-17 21:46:48', '2024-06-17 21:46:48'),
(1013, 2, NULL, 'SgPRv1cwkh91ELCKUnpu5GyfzYqoHpZ1aUR9BWZc', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-18 02:27:54', '2024-06-18 02:27:54'),
(1017, 2, NULL, 'hqcxv2HQWlcrDxXTRZSWnyLGDvGzFNZjD6HTbPPk', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-18 13:41:35', '2024-06-18 13:41:35'),
(1018, 2, NULL, 'SYf7tqvEhYBAZMJSXPQsGHX3upC0s0TmTUEiMZ8V', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-06-18 13:46:08', '2024-06-18 13:46:08'),
(1021, 2, NULL, 'Eue7oDVVFNFZbXj9MrKVo4wE5idOuGMeWkj9QG2a', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-18 14:34:18', '2024-06-18 14:34:18'),
(1026, 2, NULL, 'G0oKeOZJFWU2XejrpypuebVLQ4BNgswkNJgxNSUY', 25, 'Naranja Huando', 'item-6610712567952.jpg', '2', '0', NULL, NULL, NULL, 6, '2', NULL, NULL, NULL, 1, '2024-06-18 14:49:12', '2024-06-18 14:50:16'),
(1027, 2, NULL, 'G0oKeOZJFWU2XejrpypuebVLQ4BNgswkNJgxNSUY', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 4, '12', NULL, NULL, NULL, 1, '2024-06-18 14:50:09', '2024-06-18 14:50:18'),
(1028, 2, NULL, 'xAYW8rDzoY0MgYqqJuK5qfmuYS66cnoun2G9vwyx', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 2, '12', NULL, NULL, NULL, 1, '2024-06-18 16:40:45', '2024-06-18 16:40:45'),
(1030, 2, NULL, 'xAYW8rDzoY0MgYqqJuK5qfmuYS66cnoun2G9vwyx', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-06-18 16:43:38', '2024-06-18 16:43:38'),
(1031, 2, NULL, 'xAYW8rDzoY0MgYqqJuK5qfmuYS66cnoun2G9vwyx', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 2, '12.5', NULL, NULL, NULL, 1, '2024-06-18 16:44:02', '2024-06-18 16:52:44'),
(1032, 2, NULL, 'xAYW8rDzoY0MgYqqJuK5qfmuYS66cnoun2G9vwyx', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-18 16:44:07', '2024-06-18 16:44:07'),
(1033, 2, NULL, 'xAYW8rDzoY0MgYqqJuK5qfmuYS66cnoun2G9vwyx', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-18 16:51:23', '2024-06-18 16:51:23'),
(1034, 2, NULL, 'Y9KBgEqSr4oVOGZsATH14ydOz1VTD078ADLO9BuY', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-18 18:21:37', '2024-06-18 18:21:37'),
(1035, 2, NULL, 'Y9KBgEqSr4oVOGZsATH14ydOz1VTD078ADLO9BuY', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-18 18:21:40', '2024-06-18 18:21:40'),
(1036, 2, NULL, 'Y9KBgEqSr4oVOGZsATH14ydOz1VTD078ADLO9BuY', 29, 'Atun Real', 'item-661075dae4925.png', '6.5', '0', NULL, NULL, NULL, 1, '6.5', NULL, NULL, NULL, 1, '2024-06-18 18:21:47', '2024-06-18 18:21:47'),
(1038, 2, NULL, 'hive6CttVWmKuIIMxWjvVMvtNe5TQ3vmewlxGpIV', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-18 20:10:48', '2024-06-18 20:10:48'),
(1039, 2, NULL, 'wC2PEGhw7DBiShl3s7AWgIrZ8w3tBuw3TLZDTbn9', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-18 20:21:55', '2024-06-18 20:21:55'),
(1041, 2, NULL, '4XWWT494wjDATN34dWAvCc18XAmNsW4IwQe60k50', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-18 21:12:19', '2024-06-18 21:12:19'),
(1042, 2, NULL, '4XWWT494wjDATN34dWAvCc18XAmNsW4IwQe60k50', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 3, '12', NULL, NULL, NULL, 1, '2024-06-18 21:12:34', '2024-06-18 21:12:34'),
(1043, 2, NULL, '8Ke1g3dLIfYars8IFFWe2Lfo4TCnYCXjSsFRxcBM', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-18 21:29:37', '2024-06-18 21:29:37'),
(1044, 2, NULL, 'j72MSvoB8g6qVYtpIkQ637fZ3wJ2K8353IPfa4d9', 33, 'Pack Gaseosa: Coca Cola Sin Azúcar 1.5L', 'item-6610a7940e0b7.jpg', '12.5', '0', NULL, NULL, NULL, 1, '12.5', NULL, NULL, NULL, 1, '2024-06-19 12:34:01', '2024-06-19 12:34:01'),
(1049, 2, NULL, 'LlnQSi9Erd7qKqpDBPnKaWxH6xcJCa8psyV7af38', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-19 20:41:08', '2024-06-19 20:41:08'),
(1051, 2, NULL, 'tOLyGSGbgmdG02blszZzrboNAFbTW36ML6lIdLDE', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-19 20:48:40', '2024-06-19 20:48:40'),
(1052, 2, NULL, '5dlJXVKLnruMUizdGczM9pA8kbQHqWD1JdlZIP59', 31, 'Galleta chocolate MICO', 'item-6610a69b63837.png', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-19 21:11:40', '2024-06-19 21:11:40'),
(1053, 2, NULL, 'OCC8uD1xr9skInnqsEhV0nxbjIADNDEFTJBbhEW8', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2024-06-19 21:46:30', '2024-06-19 21:46:30'),
(1055, 2, NULL, 'KbEfYIkjrjYNrKrPQjP70SJC6n1WJ9Swwq61Sh6M', 32, 'VAKIMU YOGURT GRIEGO', 'item-6610a72eb8bf2.png', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2024-06-20 02:03:07', '2024-06-20 02:03:07'),
(1056, 2, NULL, 'uXItTdOmTUxEchQjeJF3BbSz2tCnKzgwdQQCKBwp', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-20 07:40:39', '2024-06-20 07:40:39'),
(1057, 2, NULL, 'uXItTdOmTUxEchQjeJF3BbSz2tCnKzgwdQQCKBwp', 27, 'Aceite Primor', 'item-6610726a45b7e.jpg', '12', '0', NULL, NULL, NULL, 1, '12', NULL, NULL, NULL, 1, '2024-06-20 07:40:43', '2024-06-20 07:40:43'),
(1059, 2, NULL, 'kcmFDROWVf3hMM9lQslY4EI9Z91VDXP7dVtGfWLp', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, 1, '2024-06-20 11:06:21', '2024-06-20 11:06:21'),
(1060, 2, NULL, 'kcmFDROWVf3hMM9lQslY4EI9Z91VDXP7dVtGfWLp', 35, 'Mano de espinaca', 'item-6610a8cb53e0c.jpg', '2.4', '0', NULL, NULL, NULL, 2, '2.4', NULL, NULL, NULL, 1, '2024-06-20 11:06:57', '2024-06-20 11:06:57'),
(1068, 2, NULL, 'gnmxPFW2BbKKLRnsC7KH12caFIh2HxDv3EzAGrda', 36, 'Huevo Calera', 'item-667420a622a79.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2024-06-20 12:31:07', '2024-06-20 12:31:07'),
(1070, 2, NULL, '9A5vw8yM6fL8B6IpntJiSuBrTX4zfZOhVMVJdZ31', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '2.5', '0', NULL, NULL, NULL, 1, '5', '15', '3Kg', '5', 1, '2024-06-20 17:40:15', '2024-06-20 17:40:15'),
(1071, 2, NULL, 'oSJqqTFXW6nrqQZNUrIhGMChkDBseniX3pMBBZax', 26, 'Arroz Faraón', 'item-6610719f444c7.png', '2.5', '0', NULL, NULL, NULL, 1, '3', '14', '2Kg', '3', 1, '2024-06-20 18:36:45', '2024-06-20 18:36:45'),
(1076, 2, NULL, 'm9YdlGPofgwwasO4scYzCkITq0qMCOZE4Ur3gk5b', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-22 00:48:37', '2024-06-22 00:48:37'),
(1081, 2, NULL, 'NNuB1jPVcuW6cgnYYm6aoZAYA9gMmBLOa8Bgvx7B', 28, 'Gelatinas PREMIUM', 'item-661074d2d0f29.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-06-22 20:37:59', '2024-06-22 20:37:59'),
(1086, 4, NULL, 'h7kEHaCet1U7vgyNc2K5ZbagzUmplNMN6yKComos', 37, 'TV SAMSUNG QN32Q50RAFXZA Flat 32\" QLED', 'item-6688248d74ded.jpg', '350', '0', NULL, NULL, NULL, 1, '350', NULL, NULL, NULL, 1, '2024-07-05 21:52:09', '2024-07-05 21:52:09'),
(1098, 2, NULL, 'AzIUGZdpbZy2qqHjvnV8dF1iSADBc51mRfheUQCm', 42, 'Salchipapa', 'item-668879908d32d.jpg', '1.25', '0', '12, 13', 'Mayonesa, Salsa de Tomate', '0, 0', 1, '1.5', '21', 'Grande', '1.5', 1, '2024-07-06 04:09:34', '2024-07-06 04:09:34'),
(1099, 2, NULL, 'AzIUGZdpbZy2qqHjvnV8dF1iSADBc51mRfheUQCm', 45, 'Cola Personal', 'item-66887b337658c.jpg', '0.75', '0', '16', 'Vaso Plastico', '0', 1, '0.75', '24', 'Fanta', '0.75', 1, '2024-07-06 04:09:44', '2024-07-06 04:09:44'),
(1100, 2, NULL, 'cd0ZSA9AuOYeemoJqFLD8olwI5g8JlmWGotujSb0', 43, 'Guatita', 'item-668879dd02b70.jpg', '3', '0', NULL, NULL, NULL, 1, '3', NULL, NULL, NULL, 1, '2024-07-07 05:52:09', '2024-07-07 05:52:09'),
(1101, 2, NULL, 'cd0ZSA9AuOYeemoJqFLD8olwI5g8JlmWGotujSb0', 45, 'Cola Personal', 'item-66887b337658c.jpg', '0.75', '0', NULL, NULL, NULL, 1, '0.75', '22', 'Coca', '0.75', 1, '2024-07-07 05:52:18', '2024-07-07 05:52:18'),
(1108, 2, NULL, 'eAC2JgfIv6veQxzOQ3gWsm0htFZK6YPFWUFHxPQz', 42, 'Salchipapa', 'item-668879908d32d.jpg', '1.25', '0', NULL, NULL, NULL, 1, '1.25', '20', 'Sencilla', '1.25', 1, '2024-07-08 07:10:28', '2024-07-08 07:10:28'),
(1109, 2, NULL, 'eAC2JgfIv6veQxzOQ3gWsm0htFZK6YPFWUFHxPQz', 45, 'Cola Personal', 'item-66887b337658c.jpg', '0.75', '0', NULL, NULL, NULL, 1, '0.75', '22', 'Coca', '0.75', 1, '2024-07-08 07:12:20', '2024-07-08 07:12:20'),
(1110, 2, NULL, 'eAC2JgfIv6veQxzOQ3gWsm0htFZK6YPFWUFHxPQz', 46, 'Agua Dasani', 'item-66887b913276d.jpg', '0.3', '0', NULL, NULL, NULL, 1, '0.3', '27', '1/2 Litro', '0.3', 1, '2024-07-08 07:12:28', '2024-07-08 07:12:28'),
(1119, 2, NULL, 'VFTZlzoEHc4PFwpQscgwpkVLJvmCf3VT5Jl8PUzH', 48, 'Bolones de Verde', 'item-668ca8e169559.jpg', '1.5', '0', NULL, NULL, NULL, 1, '1.5', '29', 'Queso', '1.5', 1, '2024-07-12 16:48:11', '2024-07-12 16:48:11'),
(1120, 2, NULL, '0Mu2UPyrpFl2sETYiVVQE1mqqscoo0zHFW70GyiW', 43, 'Guatita', 'item-668879dd02b70.jpg', '3', '0', NULL, NULL, NULL, 3, '3', NULL, NULL, NULL, 1, '2024-07-12 18:59:02', '2024-07-12 18:59:02'),
(1121, 2, NULL, 'hZWey9am0qmoCVE7UfZXiU4fccwy9mJlMad4ENZZ', 41, 'Hamburguesa', 'item-6688581ee550e.jpg', '1.5', '0', '9', 'Mayonesa', '0', 1, '2', '17', 'Doble', '2', 1, '2024-07-12 20:23:14', '2024-07-12 20:23:14'),
(1132, 2, NULL, '1LnxDoSFkLXfviEcVBv5ujQ5ZCiHeY5acEIaJvkz', 39, 'Arroz Menestra Carne', 'item-668831c2146b8.jpg', '4', '0', NULL, NULL, NULL, 1, '4', NULL, NULL, NULL, 1, '2024-07-12 23:11:25', '2024-07-12 23:11:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `reorder_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `vendor_id`, `reorder_id`, `name`, `slug`, `image`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(9, 4, 0, 'Televisores', 'televisores-XoMSv', 'category-668819f6459bd.png', 1, 2, '2024-07-05 21:06:14', '2024-07-05 21:06:14'),
(10, 2, 0, 'Meriendas', 'meriendas-t8e6P', 'category-6689fd8894450.jpg', 1, 2, '2024-07-05 22:27:30', '2024-07-07 07:29:28'),
(11, 2, 0, 'Fast Food', 'fast-food-0VFtA', 'category-6689fd369e8e7.jpeg', 1, 2, '2024-07-06 01:12:54', '2024-07-07 07:28:06'),
(12, 2, 0, 'Bebidas', 'bebidas-Hq8AB', 'category-66887a9948da2.jpg', 1, 2, '2024-07-06 03:58:33', '2024-07-06 03:58:33'),
(13, 2, 0, 'Desayunos', 'desayunos-USlic', 'category-668ca7632791a.jpg', 1, 2, '2024-07-09 07:58:43', '2024-07-09 07:58:43'),
(14, 2, 0, 'Pure', 'pure-o1gri', 'category-669138d6b5fc6.jpg', 1, 2, '2024-07-12 19:08:22', '2024-07-12 19:08:22'),
(15, 2, 0, 'pan', 'pan-2KNAQ', 'category-66918a38ae127.jfif', 1, 2, '2024-07-13 00:47:33', '2024-07-13 00:55:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id`, `name`, `is_deleted`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Lima', 2, 1, '2023-10-06 22:05:59', '2023-10-06 22:05:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `vendor_id`, `name`, `email`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
(8, 2, 'Luis Alberto Velez', 'luisvelezn@gmail.com', '0988841863', 'hola', '2024-07-09 08:06:06', '2024-07-09 08:06:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `active_from` varchar(255) NOT NULL,
  `active_to` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id`, `vendor_id`, `name`, `code`, `type`, `price`, `active_from`, `active_to`, `limit`, `created_at`, `updated_at`) VALUES
(5, 2, 'Descuento Primera Compra', '10PC', NULL, '1', '2024-07-06', '2024-07-13', 6, '2024-07-07 06:14:13', '2024-07-12 16:55:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_domain`
--

CREATE TABLE `custom_domain` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `requested_domain` text NOT NULL,
  `current_domain` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deliveryareas`
--

CREATE TABLE `deliveryareas` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deliveryareas`
--

INSERT INTO `deliveryareas` (`id`, `vendor_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(5, 2, 'Guayaquil', 2.5, '2024-07-05 22:39:12', '2024-07-05 22:39:12'),
(6, 2, 'ghgh', 89, '2024-07-13 00:30:28', '2024-07-13 00:30:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extras`
--

CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(8, 39, 'Mayonesa', 0, '2024-07-05 22:49:24', '2024-07-05 22:49:24'),
(9, 41, 'Mayonesa', 0, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(10, 41, 'Salsa de tomate', 0, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(11, 41, 'Picante', 0, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(12, 42, 'Mayonesa', 0, '2024-07-06 03:54:08', '2024-07-06 03:54:08'),
(13, 42, 'Salsa de Tomate', 0, '2024-07-06 03:54:08', '2024-07-06 03:54:08'),
(14, 43, 'Porcion Maduro', 0.5, '2024-07-06 03:55:25', '2024-07-06 03:55:25'),
(15, 44, 'Porcion Maduro', 0.5, '2024-07-06 03:56:16', '2024-07-06 03:56:16'),
(16, 45, 'Vaso Plastico', 0, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(17, 48, 'Mayonesa', 0, '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(18, 48, 'Salsa de Tomate', 0, '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(19, 48, 'Bictec de Carne', 1, '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(20, 48, 'Huevo Frito', 0.5, '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(21, 49, 'mantequilla', 10, '2024-07-13 01:04:21', '2024-07-13 01:04:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footerfeatures`
--

CREATE TABLE `footerfeatures` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `footerfeatures`
--

INSERT INTO `footerfeatures` (`id`, `vendor_id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, '<i class=\"fa-duotone fa-magnifying-glass\"></i>', 'Buscar producto', 'Busca tus productos  que mataran tu hambre', '2023-10-08 10:11:28', '2024-07-09 08:23:30'),
(2, 2, '<i class=\"fa-duotone fa-bags-shopping\"></i>', 'Añadir al carrito', 'Añadir al carrito todo lo que quieras', '2023-10-08 10:11:28', '2024-07-09 08:23:30'),
(5, 2, '<i class=\"fab fa-whatsapp\"></i>', 'Confirmar pedido', 'Directo al whatsapp, sin demoras', '2024-07-09 08:23:30', '2024-07-09 08:23:30'),
(6, 2, '<i class=\"fas fa-hand-holding-usd\"></i>', 'Paga al recibir', 'Cuando tengas la comida en tus manos', '2024-07-09 08:23:30', '2024-07-09 08:23:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `reorder_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `description` text NOT NULL,
  `item_price` float NOT NULL,
  `item_original_price` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tax` float DEFAULT 0,
  `slug` text DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1,
  `has_variants` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `vendor_id`, `reorder_id`, `cat_id`, `item_name`, `description`, `item_price`, `item_original_price`, `image`, `tax`, `slug`, `is_available`, `has_variants`, `created_at`, `updated_at`) VALUES
(37, 4, 0, 9, 'TV SAMSUNG QN32Q50RAFXZA Flat 32\" QLED', 'Samsung 32\" QLED Smart TV. A picture that\'s worth a billion colors. Step up to a whole new world of Color. Quantum Dot technology lets you experience images bursting with a dazzling range of over one billion colors.', 350, 350, NULL, 0, 'tv-samsung-qn32q50rafxza-flat-32-qled-jO2Ur', 1, 2, '2024-07-05 21:51:25', '2024-07-05 21:51:25'),
(38, 2, 0, 10, 'Arroz Menestra Pollo', 'Porcion de Arroz, menestra, pollo asado, chifle y jugo', 3.5, 4, NULL, 0, 'arroz-menestra-pollo-ZrCoH', 1, 2, '2024-07-05 22:33:07', '2024-07-06 01:33:59'),
(39, 2, 0, 10, 'Arroz Menestra Carne', 'Arroz\r\nMenestra\r\nCarne Asada\r\nPatacones\r\nJugo', 4, 4.25, NULL, 0, 'arroz-menestra-carne-s96Cp', 1, 2, '2024-07-05 22:47:46', '2024-07-05 22:49:24'),
(40, 2, 0, 10, 'Arroz Menestra Chuleta', 'Arroz\r\nMenestra\r\nChuleta\r\nPatacones\r\nJugo', 4, 5, NULL, 0, 'arroz-menestra-chuleta-ZGHPs', 1, 2, '2024-07-05 23:14:55', '2024-07-05 23:14:55'),
(41, 2, 0, 11, 'Hamburguesa', 'Elige entre 4 tipos de hamburguesas', 1.5, 1.75, NULL, 0, 'hamburguesa-2C0Ew', 1, 1, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(42, 2, 0, 11, 'Salchipapa', 'Sanchipapa\r\nSencilla \r\nGrande', 1.25, 1.5, NULL, 0, 'salchipapa-IhAI7', 1, 1, '2024-07-06 03:54:08', '2024-07-06 03:54:08'),
(43, 2, 0, 10, 'Guatita', 'Guatita\r\nArroz\r\nMaduro Frito\r\nJugo', 3, 3.25, NULL, 0, 'guatita-fCxO9', 1, 2, '2024-07-06 03:55:25', '2024-07-06 03:55:25'),
(44, 2, 0, 10, 'Seco de Pollo', 'Arroz colorado\r\nMaduro Frito', 3, 3.25, NULL, 0, 'seco-de-pollo-8MoqF', 1, 2, '2024-07-06 03:56:16', '2024-07-06 03:56:16'),
(45, 2, 0, 12, 'Cola Personal', 'Pepsi\r\nCoca\r\nFanta\r\nSprite\r\nFiora', 0.75, 1, NULL, 0, 'cola-personal-4UDZl', 1, 1, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(46, 2, 0, 12, 'Agua Dasani', '1/2 Litro\r\n1 Litro', 0.3, 0.35, NULL, 0, 'agua-dasani-19uqV', 1, 1, '2024-07-06 04:02:41', '2024-07-06 04:02:41'),
(47, 2, 0, 12, 'Nestea', 'Personal', 0.6, 0.75, NULL, 0, 'nestea-gahY5', 1, 2, '2024-07-06 04:03:24', '2024-07-06 04:03:24'),
(48, 2, 0, 13, 'Bolones de Verde', 'Exquisito bolon de verde hervido.\r\nQueso - Chicharron - Mixto', 1.5, 1.75, NULL, 0, 'bolones-de-verde-XoPsc', 1, 1, '2024-07-09 08:05:04', '2024-07-09 08:05:04'),
(49, 2, 0, 14, 'pan', 'gfgtrtr', 10, 10, NULL, 0, 'pan-2FpwW', 1, 2, '2024-07-13 01:04:21', '2024-07-13 01:04:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(63, 37, 'item-6688248d74ded.jpg', '2024-07-05 21:51:25', '2024-07-05 21:51:25'),
(64, 38, 'item-6688589729cd1.jpg', '2024-07-05 22:33:07', '2024-07-06 01:33:27'),
(65, 39, 'item-668831c2146b8.jpg', '2024-07-05 22:47:46', '2024-07-05 22:47:46'),
(66, 40, 'item-6688381fc98cd.jpg', '2024-07-05 23:14:55', '2024-07-05 23:14:55'),
(67, 41, 'item-6688581ee550e.jpg', '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(68, 38, 'item-668858b160110.jpg', '2024-07-06 01:33:53', '2024-07-06 01:33:53'),
(69, 42, 'item-668879908d32d.jpg', '2024-07-06 03:54:08', '2024-07-06 03:54:08'),
(70, 43, 'item-668879dd02b70.jpg', '2024-07-06 03:55:25', '2024-07-06 03:55:25'),
(71, 44, 'item-66887a10d623b.jpg', '2024-07-06 03:56:16', '2024-07-06 03:56:16'),
(72, 45, 'item-66887b337658c.jpg', '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(73, 46, 'item-66887b913276d.jpg', '2024-07-06 04:02:41', '2024-07-06 04:02:41'),
(74, 47, 'item-66887bbc60dbf.jpg', '2024-07-06 04:03:24', '2024-07-06 04:03:24'),
(75, 48, 'item-668ca8e169559.jpg', '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(76, 49, 'item-66918c4552414.jfif', '2024-07-13 01:04:21', '2024-07-13 01:04:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `layout` int(11) NOT NULL DEFAULT 1 COMMENT '1=ltr,2=rtl',
  `is_default` int(11) NOT NULL DEFAULT 2 COMMENT '1 = yes , 2 = no',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `image`, `layout`, `is_default`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'flag-6512d2e343e92.png', 1, 1, 1, '2022-12-13 10:15:46', '2023-09-26 12:03:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_number` varchar(100) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `payment_id` text DEFAULT NULL,
  `sub_total` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) NOT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery (Dine_in - POS) , 2 = Pickup (TakeAway -POS)\r\n3 = Dine In (Front)',
  `table_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_area` varchar(255) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `couponcode` varchar(255) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `customer_email` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `delivery_date_` varchar(255) DEFAULT NULL,
  `delivery_time_` varchar(255) DEFAULT NULL,
  `order_from` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1  = pending , 2 = processing , 3 = deliverd , 4 = cancelled',
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_date` date GENERATED ALWAYS AS (cast(`created_at` as date)) STORED,
  `delivery_time` time GENERATED ALWAYS AS (cast(`created_at` as time)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `vendor_id`, `user_id`, `order_number`, `payment_type`, `payment_status`, `payment_id`, `sub_total`, `tax`, `grand_total`, `weight`, `order_type`, `table_id`, `address`, `pincode`, `building`, `landmark`, `delivery_area`, `delivery_charge`, `discount_amount`, `couponcode`, `order_notes`, `client_id`, `customer_name`, `customer_email`, `mobile`, `delivery_date_`, `delivery_time_`, `order_from`, `status`, `is_notification`, `created_at`, `updated_at`) VALUES
(192, 2, NULL, 'MUN9TLSPYA', 11, 0, '11', '3.5', '0', '6', NULL, 1, NULL, '30 Y LA M', NULL, 'verde', 'tuti 29', 'Guayaquil', '2.5', '0', NULL, 'llamar', NULL, 'Luis Velez', NULL, '0990352343', NULL, NULL, NULL, 5, 1, '2024-07-05 17:40:32', '2024-07-05 23:29:31'),
(193, 2, NULL, 'RY27X0T108', 1, 0, NULL, '11.5', '0', '11.5', NULL, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cliente General', NULL, NULL, '2024-07-05', NULL, 'pos', 5, 2, '2024-07-05 18:16:10', '2024-07-07 09:22:06'),
(194, 2, NULL, '893YU9ER6E', 11, 0, '11', '11.5', '0', '11.5', NULL, 2, NULL, '', '', '', '', NULL, '0.00', '0', NULL, 'Pago a la entrega', NULL, 'Jose Quimiz', NULL, '0990352342', NULL, NULL, NULL, 5, 1, '2024-07-05 18:35:12', '2024-07-07 09:21:25'),
(195, 2, NULL, '8OG6ZF67LL', 11, 0, '11', '6', '0', '8.5', NULL, 1, NULL, '30 y la m', NULL, 'A', 'Tuti', 'Guayaquil', '2.5', '0', NULL, 'Aaa', NULL, 'Anggie Martinez', NULL, '0982545855', NULL, NULL, NULL, 5, 1, '2024-07-05 21:09:36', '2024-07-07 09:21:42'),
(196, 2, NULL, 'UNS0MZIUH8', 11, 0, '11', '8.5', '0', '7.5', NULL, 2, NULL, '', '', '', '', NULL, '0.00', '1', '10PC', 'Escribír al WhatsApp', NULL, 'Simon Rodríguez', NULL, '0945845548', NULL, NULL, NULL, 5, 1, '2024-07-07 01:59:59', '2024-07-07 09:19:57'),
(197, 2, NULL, 'IUMI68LBBF', 11, 0, '11', '10.5', '0', '13', NULL, 1, NULL, '30 y la M', NULL, NULL, 'Tuti', 'Guayaquil', '2.5', '0', NULL, NULL, NULL, 'Anggie', NULL, '0939423620', NULL, NULL, NULL, 5, 1, '2024-07-07 03:56:03', '2024-07-07 09:00:51'),
(198, 2, NULL, 'TXW4EIY6QA', 11, 0, '11', '3.5', '0', '6', NULL, 1, NULL, 'Ch entre 41 y 42', NULL, '23bd', 'Sur', 'Guayaquil', '2.5', '0', NULL, NULL, NULL, 'Carlos', NULL, '0994680126', NULL, NULL, NULL, 5, 1, '2024-07-07 04:04:52', '2024-07-07 09:20:59'),
(199, 2, NULL, 'A9NZBUK5AV', 11, 0, '11', '3.5', '0', '3.5', NULL, 2, NULL, '', '', '', '', NULL, '0.00', '0', NULL, 'hola', NULL, 'LUIS ALBERTO VELEZ', NULL, '0988841863', NULL, NULL, NULL, 1, 1, '2024-07-09 03:30:48', '2024-07-09 03:30:48'),
(200, 2, NULL, '1MJFGBEU4D', 11, 0, '11', '7.75', '0', '7.75', NULL, 2, NULL, '', '', '', '', NULL, '0.00', '0', NULL, 'Retiro en local', NULL, 'Juan Eljuri', NULL, '0984841541', NULL, NULL, NULL, 1, 1, '2024-07-09 04:16:28', '2024-07-09 04:16:28'),
(201, 2, NULL, 'EL81XXNLPC', 1, 0, NULL, '4.75', '0', '4.75', NULL, 2, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cliente General', NULL, NULL, '2024-07-08', NULL, 'pos', 2, 2, '2024-07-09 04:52:26', '2024-07-09 04:52:26'),
(202, 2, NULL, '0U5D0RVHD4', 11, 0, '11', '6', '0', '7.5', NULL, 1, NULL, 'NN', NULL, 'NN', 'NN', 'Guayaquil', '2.5', '1', '10PC', 'Vv', NULL, 'Pepe José', NULL, '0945481845', NULL, NULL, NULL, 1, 1, '2024-07-09 05:48:21', '2024-07-09 05:48:21'),
(203, 2, NULL, 'LWRXZK9FVK', 11, 0, '11', '5', '0', '7.5', NULL, 1, NULL, 'Mnvu', NULL, '6', 'Jbk', 'Guayaquil', '2.5', '0', NULL, 'Din limin', NULL, 'J', NULL, '9679846649', NULL, NULL, NULL, 2, 1, '2024-07-12 15:34:28', '2024-07-12 20:45:13'),
(204, 2, NULL, 'RL3H0DXPG9', 11, 0, '11', '3.5', '0', '5', NULL, 1, NULL, 'Nobis', NULL, 'Nobis', 'Piso 4, 404', 'Guayaquil', '2.5', '1', '10PC', 'Gagsgs', NULL, 'José', NULL, '0945845488', '2024-07-12', '11:15', NULL, 1, 1, '2024-07-12 16:10:34', '2024-07-12 16:10:34'),
(205, 2, NULL, 'F27V5CDAOD', 11, 0, '11', '2.25', '0', '1.25', NULL, 2, NULL, '', '', '', '', NULL, '0.00', '1', '10PC', 'Ff', NULL, 'Martha', NULL, '0982554488', NULL, NULL, NULL, 2, 1, '2024-07-12 16:55:38', '2024-07-12 22:29:34'),
(206, 2, NULL, 'LOZEUFG5W7', 1, 0, NULL, '4.35', '0', '4.35', NULL, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cliente General', NULL, NULL, NULL, NULL, 'pos', 5, 2, '2024-07-12 17:28:55', '2024-07-12 22:30:03'),
(207, 2, NULL, 'H5D4SWELB9', 30, 0, '30', '10.5', '0', '99.5', NULL, 1, NULL, 'lkos', NULL, '51', 'ssw2', 'ghgh', '89', '0', NULL, 'de3s', NULL, 'de3', NULL, '965544152', NULL, NULL, NULL, 2, 1, '2024-07-12 19:41:00', '2024-07-13 01:01:28'),
(208, 2, NULL, '7E6XC2SO0J', 11, 0, '11', '4', '0', '6.5', NULL, 1, NULL, 'asd 123', NULL, NULL, NULL, 'Guayaquil', '2.5', '0', NULL, NULL, NULL, 'asd', NULL, '312321312', NULL, NULL, NULL, 3, 1, '2024-07-12 19:56:05', '2024-07-13 00:56:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `extras_id` varchar(255) DEFAULT NULL,
  `extras_name` varchar(255) DEFAULT NULL,
  `extras_price` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `variants_id` varchar(255) DEFAULT NULL,
  `variants_name` varchar(255) DEFAULT NULL,
  `variants_price` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `client_detail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `item_name`, `item_image`, `extras_id`, `extras_name`, `extras_price`, `price`, `variants_id`, `variants_name`, `variants_price`, `qty`, `client_detail`, `created_at`, `updated_at`) VALUES
(328, 192, 38, 'Arroz Menestra Pollo', 'item-66882e535775f.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-05 17:40:32', '2024-07-05 17:40:32'),
(329, 193, 38, 'Arroz Menestra Pollo', 'item-66882e535775f.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-05 18:16:10', '2024-07-05 18:16:10'),
(330, 193, 39, 'Arroz Menestra Carne', 'item-668831c2146b8.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-05 18:16:10', '2024-07-05 18:16:10'),
(331, 193, 40, 'Arroz Menestra Chuleta', 'item-6688381fc98cd.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-05 18:16:10', '2024-07-05 18:16:10'),
(332, 194, 40, 'Arroz Menestra Chuleta', 'item-6688381fc98cd.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-05 18:35:12', '2024-07-05 18:35:12'),
(333, 194, 39, 'Arroz Menestra Carne', 'item-668831c2146b8.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-05 18:35:12', '2024-07-05 18:35:12'),
(334, 194, 38, 'Arroz Menestra Pollo', 'item-66882e535775f.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-05 18:35:12', '2024-07-05 18:35:12'),
(335, 195, 38, 'Arroz Menestra Pollo', 'item-6688589729cd1.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-05 21:09:36', '2024-07-05 21:09:36'),
(336, 195, 41, 'Hamburguesa', 'item-6688581ee550e.jpg', '9, 10', 'Mayonesa, Salsa de tomate', '0, 0', '2.5', '19', 'Jamon + Queso + Huevo', '2.5', '1', NULL, '2024-07-05 21:09:36', '2024-07-05 21:09:36'),
(337, 196, 40, 'Arroz Menestra Chuleta', 'item-6688381fc98cd.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-07 01:59:59', '2024-07-07 01:59:59'),
(338, 196, 43, 'Guatita', 'item-668879dd02b70.jpg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', NULL, '2024-07-07 01:59:59', '2024-07-07 01:59:59'),
(339, 196, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '22', 'Coca', '0.75', '2', NULL, '2024-07-07 01:59:59', '2024-07-07 01:59:59'),
(340, 197, 38, 'Arroz Menestra Pollo', 'item-6688589729cd1.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '3', NULL, '2024-07-07 03:56:03', '2024-07-07 03:56:03'),
(341, 198, 38, 'Arroz Menestra Pollo', 'item-6688589729cd1.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-07 04:04:52', '2024-07-07 04:04:52'),
(342, 199, 38, 'Arroz Menestra Pollo', 'item-6688589729cd1.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-09 03:30:48', '2024-07-09 03:30:48'),
(343, 200, 41, 'Hamburguesa', 'item-6688581ee550e.jpg', NULL, NULL, NULL, '1.5', '16', 'Sencilla', '1.5', '1', NULL, '2024-07-09 04:16:28', '2024-07-09 04:16:28'),
(344, 200, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '22', 'Coca', '0.75', '1', NULL, '2024-07-09 04:16:28', '2024-07-09 04:16:28'),
(345, 200, 41, 'Hamburguesa', 'item-6688581ee550e.jpg', NULL, NULL, NULL, '2', '17', 'Doble', '2', '2', NULL, '2024-07-09 04:16:28', '2024-07-09 04:16:28'),
(346, 200, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '24', 'Fanta', '0.75', '2', NULL, '2024-07-09 04:16:28', '2024-07-09 04:16:28'),
(347, 201, 39, 'Arroz Menestra Carne', 'item-668831c2146b8.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-09 04:52:26', '2024-07-09 04:52:26'),
(348, 201, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '24', 'Fanta', '0.75', '1', NULL, '2024-07-09 04:52:26', '2024-07-09 04:52:26'),
(349, 202, 48, 'Bolones de Verde', 'item-668ca8e169559.jpg', NULL, NULL, NULL, '1.5', '29', 'Queso', '1.5', '4', NULL, '2024-07-09 05:48:21', '2024-07-09 05:48:21'),
(350, 203, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '22', 'Coca', '0.75', '2', NULL, '2024-07-12 15:34:28', '2024-07-12 15:34:28'),
(351, 203, 38, 'Arroz Menestra Pollo', 'item-6688589729cd1.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-12 15:34:28', '2024-07-12 15:34:28'),
(352, 204, 38, 'Arroz Menestra Pollo', 'item-6688589729cd1.jpg', NULL, NULL, NULL, '3.5', NULL, NULL, NULL, '1', NULL, '2024-07-12 16:10:34', '2024-07-12 16:10:34'),
(353, 205, 41, 'Hamburguesa', 'item-6688581ee550e.jpg', NULL, NULL, NULL, '1.5', '16', 'Sencilla', '1.5', '1', NULL, '2024-07-12 16:55:38', '2024-07-12 16:55:38'),
(354, 205, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '23', 'Pepsi', '0.75', '1', NULL, '2024-07-12 16:55:38', '2024-07-12 16:55:38'),
(355, 206, 41, 'Hamburguesa', 'item-6688581ee550e.jpg', NULL, NULL, NULL, '1.5', '16', 'Sencilla', '1.5', '1', NULL, '2024-07-12 17:28:55', '2024-07-12 17:28:55'),
(356, 206, 45, 'Cola Personal', 'item-66887b337658c.jpg', NULL, NULL, NULL, '0.75', '22', 'Coca', '0.75', '1', NULL, '2024-07-12 17:28:55', '2024-07-12 17:28:55'),
(357, 206, 47, 'Nestea', 'item-66887bbc60dbf.jpg', NULL, NULL, NULL, '0.6', NULL, NULL, NULL, '1', NULL, '2024-07-12 17:28:55', '2024-07-12 17:28:55'),
(358, 206, 48, 'Bolones de Verde', 'item-668ca8e169559.jpg', '17', 'Mayonesa', '0', '1.5', '29', 'Queso', '1.5', '1', NULL, '2024-07-12 17:28:55', '2024-07-12 17:28:55'),
(359, 207, 43, 'Guatita', 'item-668879dd02b70.jpg', '14', 'Porcion Maduro', '0.5', '3', NULL, NULL, NULL, '3', NULL, '2024-07-12 19:41:00', '2024-07-12 19:41:00'),
(360, 208, 40, 'Arroz Menestra Chuleta', 'item-6688381fc98cd.jpg', NULL, NULL, NULL, '4', NULL, NULL, NULL, '1', NULL, '2024-07-12 19:56:05', '2024-07-12 19:56:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_name` varchar(255) NOT NULL,
  `currency` varchar(255) DEFAULT '',
  `image` varchar(255) NOT NULL,
  `public_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `encryption_key` text DEFAULT NULL,
  `editable` smallint(6) DEFAULT 0,
  `environment` int(11) NOT NULL,
  `bank_name` text DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `bank_ifsc_code` varchar(255) DEFAULT NULL,
  `is_available` int(11) NOT NULL,
  `is_activate` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `vendor_id`, `payment_name`, `currency`, `image`, `public_key`, `secret_key`, `encryption_key`, `editable`, `environment`, `bank_name`, `account_number`, `account_holder_name`, `bank_ifsc_code`, `is_available`, `is_activate`, `created_at`, `updated_at`) VALUES
(7, 2, 'MercadoPago', 'S/', 'mercadopago.png', '-', '-sdfgh456fbgfh57', '', 1, 1, NULL, NULL, NULL, NULL, 1, 2, '2023-10-07 08:42:32', '2024-06-22 01:23:28'),
(11, 2, 'Efectivo', '', 'payment-654985c6c7df7.png', '-', '-', '', 1, 1, NULL, NULL, NULL, NULL, 1, 1, '2023-10-07 03:42:32', '2023-11-07 05:33:10'),
(29, 2, 'Yape/Plin', '', 'payment-664cf670f38bd.png', '-', '-', '', 1, 1, NULL, NULL, NULL, NULL, 2, 1, '2023-10-07 07:42:32', '2024-07-05 22:39:50'),
(30, 2, 'Transferencia Bancaria', '', 'payment-6691869b2ae1e.jpg', '-', '-', '', 1, 1, NULL, NULL, NULL, NULL, 1, 1, '2023-10-07 07:42:32', '2024-07-13 00:40:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `features` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `themes_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_type` int(11) NOT NULL COMMENT '1 = duration, 2 = days',
  `duration` varchar(255) NOT NULL COMMENT '1=1 month\r\n2=3 month\r\n3=6 month\r\n4=1\r\n year\r\n5 = Lifetime\r\n\r\n',
  `days` int(11) NOT NULL,
  `order_limit` int(11) NOT NULL,
  `appointment_limit` int(11) NOT NULL,
  `custom_domain` int(11) NOT NULL COMMENT '1=yes,2=no',
  `google_analytics` int(11) NOT NULL COMMENT '1=yes,2=no',
  `coupons` int(11) NOT NULL DEFAULT 2,
  `blogs` int(11) NOT NULL DEFAULT 2,
  `social_logins` int(11) NOT NULL DEFAULT 2,
  `sound_notification` int(11) NOT NULL DEFAULT 2,
  `whatsapp_message` int(11) NOT NULL DEFAULT 2,
  `telegram_message` int(11) NOT NULL DEFAULT 2,
  `pos` int(11) NOT NULL DEFAULT 2,
  `tableqr` int(11) NOT NULL DEFAULT 2,
  `pwa` int(11) DEFAULT NULL,
  `vendor_app` int(11) NOT NULL,
  `is_available` int(11) DEFAULT 1 COMMENT '1=Yes\r\n2=No\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `vendor_id`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, 1, '', '2023-07-25 05:45:14', '2024-07-13 01:45:53'),
(2, 2, '<p>Tu privacidad es nuestra prioridad. En [Nombre de tu sitio], garantizamos que toda la informaci&oacute;n personal que compartes con nosotros se maneje de manera segura y confidencial. Solo utilizamos tus datos para procesar pedidos y mejorar tu experiencia. Nunca compartimos tu informaci&oacute;n con terceros sin tu consentimiento. Lee nuestra pol&iacute;tica completa para m&aacute;s detalles.</p>', '2024-07-09 08:01:24', '2024-07-09 08:01:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotionalbanner`
--

CREATE TABLE `promotionalbanner` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refund_policy`
--

CREATE TABLE `refund_policy` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `refund_policy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `refund_policy`
--

INSERT INTO `refund_policy` (`id`, `vendor_id`, `refund_policy_content`, `created_at`, `updated_at`) VALUES
(1, 1, '', '2023-07-25 05:30:29', '2024-07-13 01:46:03'),
(2, 2, '<p>En [Nombre de tu sitio], nos esforzamos por brindarte la mejor experiencia culinaria. Si por alguna raz&oacute;n no est&aacute;s satisfecho con tu pedido, consulta nuestras pol&iacute;ticas de reembolso. Ofrecemos soluciones r&aacute;pidas y justas para asegurar tu satisfacci&oacute;n. Contacta con nuestro equipo a trav&eacute;s de WhatsApp para cualquier consulta o solicitud de reembolso.</p>', '2024-07-09 08:01:49', '2024-07-09 08:01:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_position` varchar(255) NOT NULL,
  `maintenance_mode` int(11) DEFAULT 2 COMMENT '1 = yes, 2 = no',
  `checkout_login_required` int(11) DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `logo` varchar(255) NOT NULL DEFAULT 'default-logo.png',
  `favicon` varchar(255) NOT NULL DEFAULT 'default_favicon.png',
  `delivery_type` varchar(10) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `website_title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `og_image` varchar(255) NOT NULL DEFAULT 'og_image.png',
  `mail_driver` varchar(255) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `mail_fromaddress` varchar(255) DEFAULT NULL,
  `mail_fromname` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `whatsapp_widget` longtext DEFAULT NULL,
  `whatsapp_message` longtext NOT NULL,
  `telegram_message` longtext DEFAULT NULL,
  `telegram_access_token` text DEFAULT NULL,
  `telegram_chat_id` text DEFAULT NULL,
  `item_message` text NOT NULL,
  `language` int(11) NOT NULL DEFAULT 1,
  `template` int(11) NOT NULL DEFAULT 1,
  `template_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 for Grid , 2 for List	',
  `primary_color` varchar(255) NOT NULL DEFAULT '#171a29',
  `secondary_color` varchar(255) NOT NULL DEFAULT '#171a29',
  `landing_website_title` varchar(255) DEFAULT NULL,
  `cname_title` text DEFAULT NULL,
  `cname_text` text DEFAULT NULL,
  `interval_time` varchar(255) NOT NULL,
  `interval_type` int(11) NOT NULL,
  `time_format` int(11) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `banner` varchar(255) NOT NULL DEFAULT 'default-banner.png',
  `tracking_id` varchar(255) DEFAULT NULL,
  `view_id` varchar(255) DEFAULT NULL,
  `firebase` longtext DEFAULT NULL,
  `cover_image` varchar(255) NOT NULL DEFAULT 'default-cover.png',
  `notification_sound` varchar(255) NOT NULL DEFAULT 'notification.mp3',
  `recaptcha_version` varchar(255) DEFAULT NULL,
  `facebook_client_id` text DEFAULT NULL,
  `facebook_client_secret` text DEFAULT NULL,
  `facebook_redirect_url` text DEFAULT NULL,
  `google_client_id` text DEFAULT NULL,
  `google_client_secret` text DEFAULT NULL,
  `google_redirect_url` text DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `score_threshold` varchar(255) DEFAULT NULL,
  `cookie_text` text DEFAULT NULL,
  `cookie_button_text` text DEFAULT NULL,
  `facebook_login` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `google_login` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `custom_domain` text DEFAULT NULL,
  `subscribe_background` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_title` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `app_logo` varchar(255) DEFAULT NULL,
  `pwa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `vendor_id`, `currency`, `currency_position`, `maintenance_mode`, `checkout_login_required`, `logo`, `favicon`, `delivery_type`, `timezone`, `address`, `email`, `description`, `contact`, `copyright`, `website_title`, `meta_title`, `meta_description`, `og_image`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_fromaddress`, `mail_fromname`, `facebook_link`, `twitter_link`, `instagram_link`, `linkedin_link`, `whatsapp_widget`, `whatsapp_message`, `telegram_message`, `telegram_access_token`, `telegram_chat_id`, `item_message`, `language`, `template`, `template_type`, `primary_color`, `secondary_color`, `landing_website_title`, `cname_title`, `cname_text`, `interval_time`, `interval_type`, `time_format`, `banner`, `tracking_id`, `view_id`, `firebase`, `cover_image`, `notification_sound`, `recaptcha_version`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect_url`, `google_client_id`, `google_client_secret`, `google_redirect_url`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `score_threshold`, `cookie_text`, `cookie_button_text`, `facebook_login`, `google_login`, `custom_domain`, `subscribe_background`, `app_name`, `app_title`, `background_color`, `theme_color`, `app_logo`, `pwa`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'left', 2, 2, 'logo-6689f10dd66d6.png', 'favicon-6689f159eb76a.ico', '', 'America/Bogota', '30 y la M', 'admin@gmail.com', NULL, '0988841863', 'Copyright © 2024 WhatsApp Store. Todos los derechos reservados Sistemas LVAM', 'WhatsApp Store', 'Whatsapp Store', 'Whatsapp Store', 'default-og_image.png', 'SMTP', 'sistemaslvam.com', '25', 'info@sistemaslvam.com', 'Inf0@2023', 'TLS', 'info@sistemaslvam.com', 'Eshop', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/in/', '', '', NULL, NULL, NULL, '', 1, 1, 1, '#064635', '#519259', 'WhatsApp Store LVAM', 'Read All Instructions Carefully Before Sending Custom Domain Request', '<p>If you&#39;re using cPanel or Plesk then you need to manually add custom domain in your server with the same root directory as the script&#39;s installation&nbsp;and user need to point their custom domain A record with your server IP. Example : 68.178.145.4</p>', '', 0, 1, '', 'tracking_id', 'view_id', '', '', '', 'v3', 'Facebook Client Id', 'Facebook Client Secret', 'Facebook Redirect URL', 'Google Client Id', 'Google Client Secret', 'Google Redirect URL', '6LeJATImAAAAACnNFVNbxjCRseVp4lcQn8FdFI9N', '6LeJATImAAAAAHvTFMpKBxUk-JbN560Su4HV63nq', '0.5', 'Su experiencia en este sitio mejorará al permitir las cookies ok.', 'Estoy de acuerdo', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-13 01:47:48'),
(2, 2, '$', 'left', 1, 2, 'logo-6689f057c59db.png', 'favicon-663d263b16d26.png', '1,2', 'America/Bogota', 'Guayaquil', 'info@sistemaslvam.com', NULL, '593990352343', 'Copyright © 2024 WhatsApp Store. Todo los derechos reservados. Sistemas LVAM', 'WhatsApp Store', 'WhatsApp Store', 'Mata el hambre y has tu pedido por WhatsApp', 'og_image-668cae482cd1d.png', 'SMTP', 'sistemaslvam.com', '25', 'info@sistemaslvam.com', 'Inf0@2023', 'TLS', 'info@sistemaslvam.com', 'Whatsapp Store', 'https://facebook.com/', 'https://twitter.com/', 'https://instagram.com/', 'linkeding', NULL, 'Hola,\r\nquisiera hacer un pedido 👇\r\nN º de pedido: *{order_no}*\r\n---------------------------\r\nTipo de pedido *{delivery_type}*\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n👉Subtotal : {sub_total}\r\n👉Delivery : {delivery_charge}\r\n👉Descuento: - {discount_amount}\r\n---------------------------\r\n📃 Total : *{grand_total}*\r\n---------------------------\r\n📄 Comentario: {notes}\r\n\r\n✅ Información del cliente\r\n\r\nNombre cliente : {customer_name}\r\nN° Telefónico : {customer_mobile}\r\n\r\n📍 Detalles de la entrega\r\n\r\nDirección : {address}, {building}, {landmark}, {postal_code}\r\n---------------------------\r\n💳 Tipo de pago :\r\n*{payment_type}*\r\n\r\nHaga clic aquí para el próximo pedido👇\r\n{store_url}', 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', NULL, NULL, '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, 1, '#064635', '#6096B4', NULL, NULL, NULL, '1', 2, 1, 'banner-668cc11ada3be.jpg', NULL, NULL, '', 'cover-668cad32f07bd.png', 'notification.mp3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 'subscribe_bg-668cb6855352e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-07 03:42:32', '2024-07-13 01:02:38'),
(4, 4, '$', 'left', 2, 2, 'default-logo.png', 'favicon_default.png', '1,2', 'America/Bogota', 'GYE', 'luisvelezn@gmail.com', 'Your description', '+593988841863', 'Copyright © 2024 E-Shop. Todos los derechos reservados', 'Luis Store', 'Your store name', 'Description', 'default-og_image.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hola, \r\nMe gustaria comprar estos productos 👇\r\n*{delivery_type}* Order No: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n👉Subtotal : {sub_total}\r\n👉Tax : {total_tax}\r\n👉Delivery charge : {delivery_charge}\r\n👉Discount : - {discount_amount}\r\n---------------------------\r\n📃 Total : {grand_total}\r\n---------------------------\r\n📄 Comment : {notes}\r\n\r\n✅ Customer Info\r\n\r\nCustomer name : {customer_name}\r\nCustomer phone : {customer_mobile}\r\n\r\n📍 Delivery Details\r\n\r\nAddress : {address}, {building}, {landmark}, {postal_code}\r\n\r\n---------------------------\r\nDate : {date}\r\nTime : {time}\r\n---------------------------\r\n💳 Payment type :\r\n{payment_type}\r\n\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nGracias 👇\r\n{track_order_url}\r\n\r\nClick para nueva orden 👇\r\n{store_url}', 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', NULL, NULL, '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, 1, '#181D31', '#6096B4', NULL, NULL, NULL, '1', 2, 1, 'default-banner.png', NULL, NULL, '', 'default-cover.png', 'notification.mp3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-05 16:04:31', '2024-07-05 22:07:05'),
(5, 5, '$', 'left', 2, 2, 'default-logo.png', 'favicon_default.png', '1,2', 'America/Bogota', 'Your address', 'youremail@gmail.com', 'Your description', 'Your contact', 'Copyright © 2024 E-Shop. Todos los derechos reservados', 'Your store name', 'Your store name', 'Description', 'default-og_image.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', 'Hi, \nI would like to place an order 👇\n*{delivery_type}* Order No: {order_no}\n---------------------------\n{item_variable}\n---------------------------\n👉Subtotal : {sub_total}\n👉Tax : {total_tax}\n👉Delivery charge : {delivery_charge}\n👉Discount : - {discount_amount}\n---------------------------\n📃 Total : {grand_total}\n---------------------------\n📄 Comment : {notes}\n\n✅ Customer Info\n\nCustomer name : {customer_name}\nCustomer phone : {customer_mobile}\n\n📍 Delivery Details\n\nAddress : {address}, {building}, {landmark}, {postal_code}\n\n---------------------------\nDate : {date}\nTime : {time}\n---------------------------\n💳 Payment type :\n{payment_type}\n\n{store_name} will confirm your order upon receiving the message.\n\nTrack your order 👇\n{track_order_url}\n\nClick here for next order 👇\n{store_url}', NULL, NULL, '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, 1, '#181D31', '#6096B4', NULL, NULL, NULL, '1', 2, 1, 'default-banner.png', NULL, NULL, NULL, 'default-cover.png', 'notification.mp3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-05 17:10:40', '2024-07-05 17:10:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subscribers`
--

INSERT INTO `subscribers` (`id`, `vendor_id`, `email`, `created_at`, `updated_at`) VALUES
(3, 2, 'luisvelezn@gmail.com', '2024-07-09 09:49:55', '2024-07-09 09:49:55'),
(4, 2, 'ghfhfh@gmail.com', '2024-07-13 01:02:10', '2024-07-13 01:02:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `systemaddons`
--

CREATE TABLE `systemaddons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(20) NOT NULL,
  `activated` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `systemaddons`
--

INSERT INTO `systemaddons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Coupons', 'coupon', '3.0', 1, 'coupons.jpg', NULL, '2023-11-29 12:12:53', '2023-12-10 20:39:36'),
(2, 'POS', 'pos', '3.0', 1, 'pos.jpg', NULL, '2023-11-29 12:13:01', '2023-11-29 12:13:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tableqr`
--

CREATE TABLE `tableqr` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL COMMENT ' ',
  `name` varchar(255) NOT NULL,
  `size` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_area`
--

CREATE TABLE `table_area` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_book`
--

CREATE TABLE `table_book` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `people` bigint(20) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `terms_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `terms`
--

INSERT INTO `terms` (`id`, `vendor_id`, `terms_content`, `created_at`, `updated_at`) VALUES
(1, 1, '', '2023-07-25 05:45:28', '2024-07-13 01:46:14'),
(2, 2, '<p>Al realizar un pedido en [Nombre de tu sitio], aceptas nuestros t&eacute;rminos y condiciones. Estos establecen las reglas para el uso de nuestro servicio, incluyendo las condiciones de compra, entrega y uso del sitio web. Aseg&uacute;rate de leer y entender estos t&eacute;rminos antes de realizar tu pedido para una experiencia sin contratiempos.</p>', '2024-07-09 08:01:38', '2024-07-09 08:01:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `timings`
--

CREATE TABLE `timings` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` varchar(30) NOT NULL,
  `break_start` varchar(255) NOT NULL,
  `break_end` varchar(255) NOT NULL,
  `close_time` varchar(30) NOT NULL,
  `is_always_close` tinyint(1) NOT NULL COMMENT '1 For Yes, 2 For No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `timings`
--

INSERT INTO `timings` (`id`, `vendor_id`, `day`, `open_time`, `break_start`, `break_end`, `close_time`, `is_always_close`, `created_at`, `updated_at`) VALUES
(1, 2, 'Lunes', '07:00 AM', '12:00 PM', '01:30 PM', '09:00 PM', 2, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(2, 2, 'Martes', '07:00 AM', '12:00 PM', '01:30 PM', '09:00 PM', 2, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(3, 2, 'Miércoles', '07:00 AM', '12:00 PM', '01:30 PM', '09:00 PM', 2, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(4, 2, 'Jueves', '07:00 AM', '12:00 PM', '01:30 PM', '09:00 PM', 2, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(5, 2, 'Viernes', '07:00 AM', '12:00 PM', '01:30 PM', '09:00 PM', 2, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(6, 2, 'Sábado', '12:00 AM', '12:00 AM', '12:00 AM', '11:59 PM', 1, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(7, 2, 'Domingo', '12:00 AM', '12:00 AM', '12:00 AM', '11:59 PM', 1, '2024-07-05 18:12:55', '2024-07-05 23:12:55'),
(15, 4, 'Monday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(16, 4, 'Tuesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(17, 4, 'Wednesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(18, 4, 'Thursday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(19, 4, 'Friday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(20, 4, 'Saturday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(21, 4, 'Sunday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 16:04:31', '2024-07-05 16:04:31'),
(22, 5, 'Monday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40'),
(23, 5, 'Tuesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40'),
(24, 5, 'Wednesday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40'),
(25, 5, 'Thursday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40'),
(26, 5, 'Friday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40'),
(27, 5, 'Saturday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40'),
(28, 5, 'Sunday', '09:00 AM', '01:00 PM', '02:00 PM', '09:00 PM', 2, '2024-07-05 17:10:40', '2024-07-05 17:10:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL COMMENT 'payment_type = COD : 1,RazorPay : 2, Stripe : 3, Flutterwave : 4, Paystack : 5, Mercado Pago : 7, PayPal : 8, MyFatoorah : 9, toyyibpay : 10',
  `payment_id` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `duration` varchar(255) NOT NULL COMMENT '1=1 Month,\r\n2=3Month\r\n3=6 Month\r\n4=1 Year',
  `days` int(11) DEFAULT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `service_limit` varchar(255) NOT NULL,
  `appoinment_limit` varchar(255) NOT NULL,
  `custom_domain` int(11) NOT NULL COMMENT '1 = yes, 2 = no',
  `google_analytics` int(11) NOT NULL COMMENT '1 = yes, 2 = no',
  `coupons` int(11) NOT NULL DEFAULT 2,
  `blogs` int(11) NOT NULL DEFAULT 2,
  `social_logins` int(11) NOT NULL DEFAULT 2,
  `sound_notification` int(11) NOT NULL DEFAULT 2,
  `whatsapp_message` int(11) NOT NULL DEFAULT 2,
  `telegram_message` int(11) NOT NULL DEFAULT 2,
  `pos` int(11) NOT NULL DEFAULT 2,
  `tableqr` int(11) NOT NULL DEFAULT 2,
  `pwa` int(11) DEFAULT NULL,
  `vendor_app` int(11) NOT NULL COMMENT '1 = Yes , 2 = No',
  `expire_date` varchar(255) NOT NULL,
  `themes_id` varchar(255) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1 = pending, 2 = yes/BankTransferAccepted,3=no/BankTransferDeclined',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `login_type` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=Admin,2=vendor,3=driver,4=User/Customer',
  `description` text DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `plan_id` varchar(255) DEFAULT NULL,
  `purchase_amount` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  `available_on_landing` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `free_plan` int(11) NOT NULL DEFAULT 0,
  `is_delivery` tinyint(1) DEFAULT NULL COMMENT '1=Yes,2=No',
  `allow_without_subscription` int(11) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `is_verified` tinyint(1) NOT NULL COMMENT '1=Yes,2=No',
  `is_available` tinyint(1) NOT NULL COMMENT '1=Yes,2=No',
  `remember_token` varchar(100) DEFAULT NULL,
  `license_type` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `slug`, `email`, `mobile`, `image`, `password`, `google_id`, `facebook_id`, `login_type`, `type`, `description`, `token`, `city_id`, `area_id`, `plan_id`, `purchase_amount`, `purchase_date`, `available_on_landing`, `payment_id`, `payment_type`, `free_plan`, `is_delivery`, `allow_without_subscription`, `is_verified`, `is_available`, `remember_token`, `license_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '1234567890', 'profile-64da130e5c43b.png', '$2y$10$BGzS523wDK3hKQO1iZb6Z.Y6AgATl.LXccaa.WhGzxNVnEJHoy5SC', NULL, NULL, 'normal', 1, NULL, 'cNjSsm-TREC9n58ZQeIDBL:APA91bHSLQ2S9VFhM2yGoQJG7d-noXkcsVXRQi8Y-XSUJIFZQgzF75Kbu5beKH8dGUZ9SqIND3yauVdcG6-SwcVjU4oIjpJUx5JC9cORZp-NvPtNkJT1IMLb0KgnN68UWAtzwvri8KqT', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, NULL, 2, 2, 2, NULL, 'Regular License', '2022-08-16 08:01:17', '2023-08-18 22:25:24'),
(2, 'LUIS ALBERTO VELEZ', '', 'luis@sistemaslvam.com', '0990352343', 'profile-668cae958b260.JPG', '$2y$10$zg0799GrasEtwx9by.kT5eHb7R3wBOZT36jJwP64iaiSief1Zl5te', '', '', 'normal', 2, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, NULL, 2, 2, 1, NULL, NULL, '2023-10-07 03:42:32', '2024-07-09 08:29:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `original_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `variants`
--

INSERT INTO `variants` (`id`, `item_id`, `name`, `price`, `original_price`, `created_at`, `updated_at`) VALUES
(16, 41, 'Sencilla', 1.5, 1.75, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(17, 41, 'Doble', 2, 1.75, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(18, 41, 'Jamon + Queso o Huevo', 2.25, 2.5, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(19, 41, 'Jamon + Queso + Huevo', 2.5, 3, '2024-07-06 01:31:26', '2024-07-06 01:31:26'),
(20, 42, 'Sencilla', 1.25, 1.5, '2024-07-06 03:54:08', '2024-07-06 03:54:08'),
(21, 42, 'Grande', 1.5, 1.75, '2024-07-06 03:54:08', '2024-07-06 03:54:08'),
(22, 45, 'Coca', 0.75, 1, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(23, 45, 'Pepsi', 0.75, 1, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(24, 45, 'Fanta', 0.75, 1, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(25, 45, 'Sprite', 0.75, 1, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(26, 45, 'Fiora', 0.75, 1, '2024-07-06 04:01:07', '2024-07-06 04:01:07'),
(27, 46, '1/2 Litro', 0.3, 0.35, '2024-07-06 04:02:41', '2024-07-06 04:02:41'),
(28, 46, '1 Litro', 0.6, 0.75, '2024-07-06 04:02:41', '2024-07-06 04:02:41'),
(29, 48, 'Queso', 1.5, 1.75, '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(30, 48, 'Chicharron', 1.75, 2, '2024-07-09 08:05:05', '2024-07-09 08:05:05'),
(31, 48, 'Mixto', 2, 3, '2024-07-09 08:05:05', '2024-07-09 08:05:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_item_id_foreign` (`item_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `custom_domain`
--
ALTER TABLE `custom_domain`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deliveryareas`
--
ALTER TABLE `deliveryareas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `footerfeatures`
--
ALTER TABLE `footerfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promotionalbanner`
--
ALTER TABLE `promotionalbanner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `refund_policy`
--
ALTER TABLE `refund_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `systemaddons`
--
ALTER TABLE `systemaddons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tableqr`
--
ALTER TABLE `tableqr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_area`
--
ALTER TABLE `table_area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_book`
--
ALTER TABLE `table_book`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `timings`
--
ALTER TABLE `timings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1135;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `custom_domain`
--
ALTER TABLE `custom_domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deliveryareas`
--
ALTER TABLE `deliveryareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `footerfeatures`
--
ALTER TABLE `footerfeatures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT de la tabla `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `promotionalbanner`
--
ALTER TABLE `promotionalbanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `refund_policy`
--
ALTER TABLE `refund_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `systemaddons`
--
ALTER TABLE `systemaddons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tableqr`
--
ALTER TABLE `tableqr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `table_area`
--
ALTER TABLE `table_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `table_book`
--
ALTER TABLE `table_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `timings`
--
ALTER TABLE `timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
