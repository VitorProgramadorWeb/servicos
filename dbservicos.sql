-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/12/2023 às 15:38
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbservicos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `ID_pessoa` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `idade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`ID_pessoa`, `nome`, `idade`) VALUES
(1, 'Maria', 10),
(2, 'Vitor', 20),
(3, 'João', 26),
(4, 'Marcos', 45);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `ID_servico` int(10) UNSIGNED NOT NULL,
  `numero` int(10) UNSIGNED DEFAULT NULL,
  `ID_pessoa` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`ID_servico`, `numero`, `ID_pessoa`) VALUES
(1, 22, 2),
(2, 33, 1),
(3, 11, 3),
(21, 45, 3),
(22, 22, 2),
(23, 11, 2),
(26, 67, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`ID_pessoa`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`ID_servico`),
  ADD KEY `ID_pessoa` (`ID_pessoa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `ID_pessoa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `ID_servico` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`ID_pessoa`) REFERENCES `pessoas` (`ID_pessoa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
