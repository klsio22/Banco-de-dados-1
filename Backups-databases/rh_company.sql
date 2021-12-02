-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25-Nov-2021 às 22:07
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rh_company`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `activity`
--
-- Criação: 22-Nov-2021 às 04:26
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `activity`
--

INSERT INTO `activity` (`id_activity`, `description`) VALUES
(1, 'Gerência'),
(2, 'Programação'),
(3, 'Analise de Sistemas'),
(4, 'Suporte'),
(5, 'Vendas'),
(6, 'Teste'),
(7, 'Implantação'),
(8, 'Manuteção de Rede'),
(9, 'Manuteção de BD'),
(10, 'Auxiliar Financeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departament`
--
-- Criação: 22-Nov-2021 às 04:44
--

CREATE TABLE `departament` (
  `id_departament` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `id_manager` int(11) DEFAULT NULL,
  `id_departament_management` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departament`
--

INSERT INTO `departament` (`id_departament`, `name`, `id_manager`, `id_departament_management`) VALUES
(1, 'Presidência', 1, NULL),
(2, 'Diretorias', 2, 1),
(3, 'Analise de Sistemas', 3, 2),
(4, 'Desenvolvimento de Sistemas', 4, 3),
(5, 'Testes', 8, 3),
(6, 'Suporte', 10, 3),
(7, 'Vendas', 11, 2),
(8, 'Financeiro', 13, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `education_level`
--
-- Criação: 22-Nov-2021 às 03:08
--

CREATE TABLE `education_level` (
  `id_education_level` int(11) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `education_level`
--

INSERT INTO `education_level` (`id_education_level`, `description`) VALUES
(1, 'Ensino Médio'),
(2, 'Curso Tecnico'),
(3, 'Superior'),
(4, 'Especialização'),
(5, 'Mestrado'),
(6, 'Doutorado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee`
--
-- Criação: 22-Nov-2021 às 04:46
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `id_departament` int(11) DEFAULT NULL,
  `number_phone` varchar(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `hiring_date` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `work_overtime` decimal(10,2) DEFAULT NULL,
  `id_education_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `employee`
--

INSERT INTO `employee` (`id_employee`, `first_name`, `last_name`, `id_departament`, `number_phone`, `birth_date`, `hiring_date`, `gender`, `salary`, `work_overtime`, `id_education_level`) VALUES
(1, 'Mauricio', 'Galiote', 1, '44999577675', '1966-08-23', '2000-03-08', 'M', '15000.00', '2000.00', 6),
(2, 'Alexandre', 'Matos', 2, '44999572134', '1977-02-26', '2003-04-02', 'M', '10000.00', '1000.00', 5),
(3, 'Cuca', 'da Silva', 3, '44999432114', '1978-09-12', '2005-01-09', 'M', '8000.00', '500.00', 4),
(4, 'Dudu', 'Hernandez', 4, '44999573232', '1992-02-11', '2009-05-27', 'M', '16000.00', '3000.00', 3),
(5, 'Roger', 'Guedes', 4, '44999578899', '1993-06-21', '2009-04-22', 'M', '3000.00', '1000.00', 3),
(6, 'Edu', 'Dracena', 4, '44999323221', '1998-04-28', '2010-03-17', 'M', '2000.00', '0.00', 3),
(7, 'Paulo', 'Nascimento', 4, '44999575566', '1999-03-14', '2011-05-11', 'M', '5000.00', '2000.00', 3),
(8, 'Talles', 'Santos', 5, '44999563222', '1993-02-21', '2012-06-27', 'M', '1000.00', '1000.00', 3),
(9, 'Luiz', 'Guerra', 5, '44999118822', '1996-09-21', '2013-08-08', 'M', '2000.00', '500.00', 2),
(10, 'Matheus', 'Macedo', 6, '44999114546', '1997-02-25', '2003-09-02', 'M', '1000.00', '200.00', 2),
(11, 'Juliana', 'Paz', 7, '44944114546', '1991-03-25', '2004-05-02', 'F', '1000.00', '200.00', 2),
(12, 'Maria', 'Silva', 7, '44992114546', '1994-06-25', '2001-09-02', 'F', '1000.00', '200.00', 2),
(13, 'João', 'Roberto', 8, '44996614546', '1994-06-25', '2009-09-02', 'M', '3000.00', '200.00', 2),
(14, 'João', 'Coelho', 8, '44991114546', '1999-06-25', '2003-05-02', 'M', '3000.00', '200.00', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee_projecty`
--
-- Criação: 22-Nov-2021 às 05:34
--

CREATE TABLE `employee_projecty` (
  `id_project` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `time_spent` time NOT NULL,
  `date_initial` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `employee_projecty`
--

INSERT INTO `employee_projecty` (`id_project`, `id_employee`, `id_activity`, `time_spent`, `date_initial`, `date_end`) VALUES
(1, 3, 1, '12:00:00', '2014-05-08', '2017-12-31'),
(2, 3, 1, '12:00:00', '2014-05-08', '2017-12-31'),
(3, 3, 1, '12:00:00', '2014-05-08', '2017-12-31'),
(4, 3, 1, '12:00:00', '2014-05-08', '2017-12-31'),
(1, 4, 3, '50:00:00', '2015-07-03', '2017-12-31'),
(2, 4, 3, '50:00:00', '2015-07-03', '2017-12-31'),
(3, 4, 3, '50:00:00', '2015-07-03', '2017-12-31'),
(4, 4, 3, '50:00:00', '2015-07-03', '2017-12-31'),
(1, 5, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(2, 5, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(3, 5, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(4, 5, 4, '100:00:00', '2015-08-01', '2017-10-15'),
(1, 6, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(1, 6, 6, '20:00:00', '2015-08-01', '2017-10-15'),
(2, 6, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(3, 6, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(4, 6, 4, '100:00:00', '2015-08-01', '2017-10-15'),
(1, 7, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(2, 7, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(3, 7, 2, '100:00:00', '2015-08-01', '2017-10-15'),
(4, 7, 4, '100:00:00', '2015-08-01', '2017-10-15'),
(2, 8, 6, '20:00:00', '2015-08-01', '2017-10-15'),
(3, 9, 6, '20:00:00', '2015-08-01', '2017-10-15'),
(4, 9, 4, '20:00:00', '2015-08-01', '2017-10-15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `project`
--
-- Criação: 22-Nov-2021 às 05:34
--

CREATE TABLE `project` (
  `id_project` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `date_initial` date NOT NULL,
  `date_end` date NOT NULL,
  `id_departament` int(11) NOT NULL,
  `cust` decimal(10,2) NOT NULL,
  `id_manager` int(11) NOT NULL,
  `id_project_main` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `project`
--

INSERT INTO `project` (`id_project`, `description`, `date_initial`, `date_end`, `id_departament`, `cust`, `id_manager`, `id_project_main`) VALUES
(1, 'Sistema de Supermercado', '2014-05-08', '2017-12-31', 3, '100000.00', 3, NULL),
(2, 'Site de Supermercado', '2015-01-01', '2017-12-31', 3, '50000.00', 3, 1),
(3, 'Sistema de Padaria', '2017-01-01', '2017-12-31', 3, '30000.00', 4, NULL),
(4, 'Melhoria do Suporte', '2014-05-08', '2017-12-31', 3, '100000.00', 6, NULL),
(5, 'Melhoria da Qualidade do Software', '2014-01-01', '2015-12-31', 3, '5000.00', 5, NULL),
(6, 'Sistema de Venda por Celular', '2011-01-01', '2015-12-31', 4, '35000.00', 5, NULL),
(7, 'Site de Vendas Online', '2014-01-01', '2015-12-31', 4, '55000.00', 5, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Índices para tabela `departament`
--
ALTER TABLE `departament`
  ADD PRIMARY KEY (`id_departament`),
  ADD KEY `id_departament_management` (`id_departament_management`),
  ADD KEY `id_manager` (`id_manager`);

--
-- Índices para tabela `education_level`
--
ALTER TABLE `education_level`
  ADD PRIMARY KEY (`id_education_level`);

--
-- Índices para tabela `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `id_departament` (`id_departament`),
  ADD KEY `id_education_level` (`id_education_level`);

--
-- Índices para tabela `employee_projecty`
--
ALTER TABLE `employee_projecty`
  ADD PRIMARY KEY (`id_employee`,`id_project`,`id_activity`),
  ADD KEY `id_project` (`id_project`),
  ADD KEY `id_activity` (`id_activity`);

--
-- Índices para tabela `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`),
  ADD KEY `id_manager` (`id_manager`),
  ADD KEY `id_depatament_main` (`id_project_main`),
  ADD KEY `id_departament` (`id_departament`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `departament`
--
ALTER TABLE `departament`
  MODIFY `id_departament` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `education_level`
--
ALTER TABLE `education_level`
  MODIFY `id_education_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `departament`
--
ALTER TABLE `departament`
  ADD CONSTRAINT `departament_ibfk_1` FOREIGN KEY (`id_departament_management`) REFERENCES `departament` (`id_departament`),
  ADD CONSTRAINT `departament_ibfk_2` FOREIGN KEY (`id_manager`) REFERENCES `employee` (`id_employee`);

--
-- Limitadores para a tabela `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`id_education_level`) REFERENCES `education_level` (`id_education_level`);

--
-- Limitadores para a tabela `employee_projecty`
--
ALTER TABLE `employee_projecty`
  ADD CONSTRAINT `employee_projecty_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `project` (`id_project`),
  ADD CONSTRAINT `employee_projecty_ibfk_2` FOREIGN KEY (`id_activity`) REFERENCES `activity` (`id_activity`),
  ADD CONSTRAINT `employee_projecty_ibfk_3` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id_employee`);

--
-- Limitadores para a tabela `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`id_manager`) REFERENCES `employee` (`id_employee`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`id_project_main`) REFERENCES `project` (`id_project`),
  ADD CONSTRAINT `project_ibfk_3` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
