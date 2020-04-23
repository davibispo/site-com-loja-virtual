-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 10.1.2.127:3306
-- Tempo de geração: 21-Abr-2020 às 00:03
-- Versão do servidor: 10.2.31-MariaDB
-- versão do PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u559973813_medin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_08_162037_create_products_table', 1),
(4, '2017_07_16_190510_create_orders_table', 1),
(5, '2017_07_16_190732_create_product_order_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','3','4','5','6','7','8','9') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('1','2','3','4','5','6','7') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `date_refresh_status` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `reference`, `code`, `status`, `payment_method`, `date`, `date_refresh_status`, `created_at`, `updated_at`) VALUES
(13, 2, '201810231259295bcf4561bbd63', '684F5CAC-05FA-4D1B-AC2C-7420C10E82AC', '1', '2', '2018-10-23', NULL, '2018-10-23 12:59:33', '2018-10-23 12:59:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `ativo`, `created_at`, `updated_at`) VALUES
(9, 'Tempero Integral.40g', '789890547', 8.25, 'Tempero-Integral-40g.jpg', '0', NULL, NULL),
(10, 'Tempero Misto.40g', '789890547', 8.25, 'Tempero-Misto-40g.jpg', '0', NULL, NULL),
(11, 'Alecrim 20g', '789890547', 4.80, 'Alecrim-20g.jpg', '0', NULL, NULL),
(12, 'Bicarbonato de Sódio_ 30g', '789890547', 8.25, 'Bicarbonato-de-Sódio-30g.jpg', '0', NULL, NULL),
(13, 'Boldo 20g', '789890547', 4.80, 'Boldo-20g.jpg', '0', NULL, NULL),
(14, 'Camomila 10g', '789890547', 5.76, 'Camomila-10g.jpg', '0', NULL, NULL),
(15, 'Canela da China 20g', '789890547', 5.76, 'Canela-da-China-20g.jpg', '0', NULL, NULL),
(16, 'Canela em Pó30g', '789890547', 5.76, 'Canela-em-Pó-30g.jpg', '0', NULL, NULL),
(17, 'Cominho em Grão 20g', '789890547', 5.76, 'Cominho-20g.jpeg', '0', NULL, NULL),
(18, 'Cravo 15g', '789890547', 5.76, 'Cravo-15g.jpeg', '0', NULL, NULL),
(19, 'Curry 20g-', '789890547', 4.80, 'Curry-20g.jpeg', '0', NULL, NULL),
(20, 'Erva Doce/Funcho 20g', '789890547', 4.80, 'Erva-Doce-20g.jpeg', '0', NULL, NULL),
(21, 'Louro 20g', '789890547', 4.80, 'Louro-20g.jpeg', '0', NULL, NULL),
(22, 'Massa de Mandioca', '789890547', 0.00, 'Massa-de-Mandioca-Para-Bolo.jpg', '0', NULL, NULL),
(23, 'Massa de Tapioca', '789890547', 0.00, 'Massa-de-Tapioca.jpg', '0', NULL, NULL),
(24, 'Mel de Abelha', '789890547', 0.00, 'Mel-de-Abelha.jpg', '0', NULL, NULL),
(25, 'Orégano 20g', '789890547', 5.76, 'Orégano-20g.jpg', '0', NULL, NULL),
(26, 'Pedra_Hume 20g', '789890547', 4.80, 'Pedra-Hume-20g.jpg', '0', NULL, NULL),
(27, 'Pimenta do Reino 20g', '789890547', 5.76, 'Pimenta-do-Reino-20g.jpeg', '0', NULL, NULL),
(28, 'Pólem', '789890547', 0.00, 'Pólem.jpg', '0', NULL, NULL),
(29, 'Salsa -15g', '789890547', 4.80, 'Salsa-15g.jpg', '0', NULL, NULL),
(34, 'Salsa', '789890547', 4.80, 'Salsa-15g.jpeg', '0', NULL, NULL),
(35, 'Sene-15g', '789890547', 4.80, 'Sene-15g.jpg', '0', NULL, NULL),
(36, 'Açafrão da Terra 20g', '789890547', 1.70, 'Açafrão da Terra à Granel.png', '1', NULL, NULL),
(37, 'Alecrim 10g', '789890547', 1.70, 'Alecrim à Granel.png', '1', NULL, NULL),
(38, 'Alho Nobre 180g', '789890547', 7.70, 'Alho Nobre à Granel.png', '1', NULL, NULL),
(50, 'Bicarbonato de Sódio 30g', '789890547', 1.70, 'Bicarbonato de Sódio à Granel.png', '1', NULL, NULL),
(51, 'Boldo em Folha 15g', '789890547', 1.70, 'Boldo em Folha à Granel.png', '1', NULL, NULL),
(52, 'Camomila 8g', '789890547', 1.70, 'Camomila à Granel.png', '1', NULL, NULL),
(53, 'Canela da China 14g', '789890547', 1.70, 'Canela da China à Granel.png', '1', NULL, NULL),
(64, 'Canela em Pó 30g ', '789890547', 1.70, 'Canela em Pó à Granel.png', '1', NULL, NULL),
(65, 'Castanha do Caju 75g', '789890547', 5.00, 'Castanha de Caju à Granel.png', '1', NULL, NULL),
(66, 'Castanha do Pará 75g', '789890547', 7.00, 'Castanha do Pará à Granel.png', '1', NULL, NULL),
(67, 'Chá Verde 14g', '789890547', 1.70, 'Chá Verde à Granel.png', '1', NULL, NULL),
(68, 'Chimishurri com Pimenta 14g', '789890547', 1.70, 'Chimishurri com Pimenta à Granel.png', '1', NULL, NULL),
(74, 'Chimishurri sem Pimenta 14g', '789890547', 1.70, 'Chimishurri sem Pimenta à Granel.png', '1', NULL, NULL),
(75, 'Cominho em Grãos 14g', '', 1.70, 'Cominho em Grãos à Granel.png', '1', NULL, NULL),
(76, 'Cravo da Índia 10g', '789890547', 1.70, 'Cravo da Índia à Granel.png', '1', NULL, NULL),
(77, 'Curry 20g', '789890547', 1.70, 'Curry à Granel.png', '1', NULL, NULL),
(78, 'Erva Doce 14g', '789890547', 1.70, 'Erva Doce à granel.png', '1', NULL, NULL),
(84, 'Louro em Folha 12g', '789890547', 1.70, 'Louro em Folha à Granel.png', '1', NULL, NULL),
(85, 'Orégano 14g', '789890547', 1.70, 'Orégano á Granel.png', '1', NULL, NULL),
(86, 'Páprica Doce', '789890547', 1.70, 'Páprica Doce à Granel.png', '1', NULL, NULL),
(87, 'Páprica Picante', '789890547', 1.70, 'Páprica Picante à Granel.png', '1', NULL, NULL),
(88, 'Pedra Hume 20g', '789890547', 1.70, 'Pedra Hume à Granel.png', '1', NULL, NULL),
(97, 'Pimenta Calabresa 15g', '789890547', 1.70, 'Pimenta Calabresa à granel.png', '1', NULL, NULL),
(98, 'Pimenta do Reino (Grãos) 14g', '789890547', 1.70, 'Pimenta do Reino em Grãos à Granel.png', '1', NULL, NULL),
(99, 'Salsa 15g', '789890547', 1.70, 'Salsa Desidratada à Granel.png', '1', NULL, NULL),
(100, 'Sene 15g', '789890547', 1.70, 'Sene à Granel.png', '1', NULL, NULL),
(105, 'Tempero Integral 40g', '789890547', 1.70, 'Tempero Integral à Granel.png', '1', NULL, NULL),
(106, 'Tempero Misto 40g', '789890547', 1.70, 'Tempero Misto à Granel.png', '1', NULL, NULL),
(107, 'Tapioca 1Kg', '789890547', 5.50, 'Massa-de-Tapioca.jpg', '1', NULL, NULL),
(108, 'Massa de mandioca 1Kg', '789890547', 5.50, 'Massa-de-Mandioca-Para-Bolo.jpg', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_order`
--

CREATE TABLE `product_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_order`
--

INSERT INTO `product_order` (`id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(1, 13, 9, 8.25, 1),
(2, 13, 11, 4.80, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `complement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `cpf`, `street`, `number`, `complement`, `district`, `postal_code`, `city`, `state`, `country`, `phone`, `area_code`, `birth_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Davi bispo de oliveira', 'davi-bispo@hotmail.com', '$2y$10$rJmuqKamHcbDfl9Ap0jYCueEiIJjHWUDln6JnFzOsgRPzl0mjG9f.', '04122657458', 'Rua Projetada 679', 105, 'Bosque das acácias BL 1 Ap 203', 'Benedito Bentes', 57084162, 'Maceió', 'AL', 'Brasil', '999693407', 82, '1982-07-11', 'vNsPWSInRUkkil9tK1IoBAL6Nag4VECsEyxmw25lL5c0WT94hbTiyy6GQtLx', '2018-10-23 12:56:29', '2018-10-23 12:56:29'),
(3, 'Michael Douglas Medino da Silva', 'michaelmedino95@gmail.com', '$2y$10$2cSeZvNfIgzL0BUkkbBX1eMJh7dPlsKLNttmrcTTb8nILKv9OwyNm', '10255909480', 'LOT. BOSQUE DO SOSSEGO RUA \'C\'', 18, 'AO LADO DA CEASA', 'SANTOS DUMONT', 57075791, 'Maceio', 'AL', 'Brasil', '82988733821', 82, '1995-03-20', NULL, '2019-09-11 22:08:04', '2019-09-11 22:08:04');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_reference_unique` (`reference`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Índices para tabela `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_order_order_id_foreign` (`order_id`),
  ADD KEY `product_order_product_id_foreign` (`product_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de tabela `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_order_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
