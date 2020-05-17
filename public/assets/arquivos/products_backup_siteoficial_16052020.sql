-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 10.1.2.127:3306
-- Tempo de geração: 16-Maio-2020 às 10:35
-- Versão do servidor: 10.4.13-MariaDB
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

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
