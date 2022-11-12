-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Nov-2022 às 23:49
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cart`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtcs`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtcs`
--

INSERT INTO `produtcs` (`id`, `name`, `price`, `data_cadastro`) VALUES
(1, 'PC Gamer', '12000', '2022-11-12 22:47:17'),
(2, 'Teclado Gamer', '1200', '2022-11-12 22:47:17'),
(3, 'Mouse Gamer', '800', '2022-11-12 22:47:17'),
(4, 'Mouse Pad', '300', '2022-11-12 22:47:17'),
(5, 'NoteBook Gamer', '18000', '2022-11-12 22:47:17'),
(6, 'Cadeira Gamer', '6000', '2022-11-12 22:47:17'),
(7, 'Mesa Gamer', '2000', '2022-11-12 22:47:17');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtcs`
--
ALTER TABLE `produtcs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtcs`
--
ALTER TABLE `produtcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
