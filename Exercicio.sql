-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 24/07/2024 às 19:16
-- Versão do servidor: 9.0.1
-- Versão do PHP: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Exercicio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Aluno`
--

CREATE TABLE `Aluno` (
  `id` int NOT NULL,
  `nome` varchar(15) NOT NULL,
  `fone` varchar(15) NOT NULL,
  `data_nascimento` date NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `id_escola` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Aluno`
--

INSERT INTO `Aluno` (`id`, `nome`, `fone`, `data_nascimento`, `ativo`, `id_escola`) VALUES
(1, 'Enzo', '(43)99130-8099', '2024-07-02', 1, 1),
(2, 'Jose', '(43)99999-9999', '2024-01-01', 1, 2),
(3, 'Fernando', '(43)1111-1111', '2000-11-29', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Escola`
--

CREATE TABLE `Escola` (
  `id` int NOT NULL,
  `nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Escola`
--

INSERT INTO `Escola` (`id`, `nome`) VALUES
(1, 'AWF'),
(2, 'Bom Jesus');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Aluno`
--
ALTER TABLE `Aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Conexão` (`id_escola`);

--
-- Índices de tabela `Escola`
--
ALTER TABLE `Escola`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Aluno`
--
ALTER TABLE `Aluno`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `Escola`
--
ALTER TABLE `Escola`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Aluno`
--
ALTER TABLE `Aluno`
  ADD CONSTRAINT `Conexão` FOREIGN KEY (`id_escola`) REFERENCES `Escola` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
