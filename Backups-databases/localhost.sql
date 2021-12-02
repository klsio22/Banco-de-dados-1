-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25-Nov-2021 às 22:09
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
-- Banco de dados: `dio_mysql`
--
CREATE DATABASE IF NOT EXISTS `dio_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dio_mysql`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `persons`
--
-- Erro ao ler a estrutura para a tabela dio_mysql.persons: #1932 - Table 'dio_mysql.persons' doesn't exist in engine
-- Erro ao ler dados para tabela dio_mysql.persons: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `dio_mysql`.`persons`' na linha 1
--
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--
-- Criação: 12-Nov-2021 às 21:57
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`id_category`, `description`) VALUES
(1, 'Memorias'),
(2, 'Processadores'),
(3, 'Placa mãe'),
(4, 'Disco Armazenamento'),
(5, 'Acessórios'),
(6, 'Monitores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `city`
--
-- Criação: 16-Nov-2021 às 22:04
--

CREATE TABLE `city` (
  `id_city` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `city`
--

INSERT INTO `city` (`id_city`, `name`, `id_state`) VALUES
(1, 'Guarapuava', 1),
(2, 'Curitiba', 1),
(3, 'Londrina', 1),
(4, 'Mariga¡', 1),
(5, 'São José dos Campos', 2),
(6, 'São Paulo', 2),
(7, 'Campinas', 2),
(8, 'São José dos Campos', 2),
(9, 'Florianópolis', 3),
(10, 'Blumenau', 3),
(11, 'Guarapuava', 1),
(12, 'Curitiba', 1),
(13, 'Londrina', 1),
(14, 'Mariga¡', 1),
(15, 'São José dos Campos', 2),
(16, 'São Paulo', 2),
(17, 'Campinas', 2),
(18, 'São José dos Campos', 2),
(19, 'Florianópolis', 3),
(20, 'Blumenau', 3),
(21, 'Guarapuava', 1),
(22, 'Curitiba', 1),
(23, 'Londrina', 1),
(24, 'Mariga¡', 1),
(25, 'São José dos Campos', 2),
(26, 'São Paulo', 2),
(27, 'Campinas', 2),
(28, 'São José dos Campos', 2),
(29, 'Florianópolis', 3),
(30, 'Blumenau', 3),
(31, 'Guarapuava', 1),
(32, 'Curitiba', 1),
(33, 'Londrina', 1),
(34, 'Mariga¡', 1),
(35, 'São José dos Campos', 2),
(36, 'São Paulo', 2),
(37, 'Campinas', 2),
(38, 'São José dos Campos', 2),
(39, 'Florianópolis', 3),
(40, 'Blumenau', 3),
(41, 'Ponta Grossa', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `client`
--
-- Criação: 17-Nov-2021 às 00:29
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `AddressName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `client`
--

INSERT INTO `client` (`id_client`, `FirstName`, `LastName`, `AddressName`, `email`, `id_city`) VALUES
(1, 'Gabriel ', 'Jesus', 'Rua Juca, 45', 'Gabriel@gmail.com', 1),
(2, 'Fernando ', 'Pras', 'Rua XV, 55', 'Fernando_156894@gmail.com', 1),
(3, 'Dudu ', 'da Silva', 'Rua Guara, 45', 'Dudu_84416@gmail.com', 2),
(4, 'Felipe ', 'Melo', 'Rua Brasil, 52', 'Melo_77954@gmail.com', 3),
(5, 'Roger', 'Guedes', NULL, 'Melo_77954@gmail.com', 3),
(6, 'William ', 'Bigode', 'Rua 19, 21', 'william_36854@gmail.com', 5),
(7, 'Miguel', 'Borja', 'Rua João, 40', 'miguel_6641@gmail.com', 6),
(8, 'José ', 'Roberto da Silva', 'Rua XV, 53', 'Jose_145324@gmailcom', 9),
(9, 'Jean ', 'da Silva', 'Rua Atlantica, 9', 'Jan_213213@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departament`
--
-- Criação: 03-Nov-2021 às 19:43
--

CREATE TABLE `departament` (
  `id_departament` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departament`
--

INSERT INTO `departament` (`id_departament`, `description`) VALUES
(1, 'RH'),
(2, 'Diretoria'),
(3, 'TI'),
(4, 'Vendas'),
(5, 'Financeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee`
--
-- Criação: 12-Nov-2021 às 22:07
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `hiring_date` date DEFAULT NULL,
  `job` varchar(35) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `work_overtime` decimal(10,2) DEFAULT NULL,
  `id_manager` int(11) DEFAULT NULL,
  `id_departament` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `employee`
--

INSERT INTO `employee` (`id_employee`, `first_name`, `last_name`, `hiring_date`, `job`, `salary`, `work_overtime`, `id_manager`, `id_departament`) VALUES
(1, 'Mario ', 'Andrade da Silva', '2012-11-13', 'Presidente', '15000.00', '2000.00', NULL, 2),
(2, 'Luiz', 'Pereira Lima', '2015-05-21', 'Diretor', '12000.00', '1000.00', 2, 2),
(3, 'André', 'Sousa de Morais', '2019-02-21', 'Gerente', '10000.00', '900.00', 2, 1),
(4, 'Bill', 'Gates', '2014-08-10', 'Programador', '5000.00', '500.00', 2, 3),
(5, 'Willian', 'Cordeiro', '2012-08-10', 'Técnico', '2000.00', '1000.00', 4, 3),
(6, 'João', 'da Silva', '2009-05-21', 'Gerente', '2000.00', '200.00', 2, 4),
(7, 'João ', 'da Garrincha', '2001-01-22', 'Vendedor', '1000.00', '200.00', 6, 4),
(8, 'John ', 'Rambo', '2001-04-21', 'Vendedor', '1000.00', '200.00', 6, 4),
(9, 'Joaquim ', 'Fernandez', '2004-01-22', 'Vendedor', '1000.00', '200.00', 6, 4),
(10, 'Maria', 'da Silva', '2003-02-26', 'Técnico de RH', '3000.00', '300.00', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_item`
--
-- Criação: 12-Nov-2021 às 23:49
--

CREATE TABLE `order_item` (
  `id_item_order` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `order_item`
--

INSERT INTO `order_item` (`id_item_order`, `price`, `amount`, `id_order`, `id_product`) VALUES
(1, '400.00', 2, 1, 1),
(2, '600.00', 1, 1, 11),
(3, '400.00', 2, 2, 1),
(4, '600.00', 1, 2, 11),
(5, '400.00', 2, 3, 1),
(6, '600.00', 1, 3, 11),
(7, '400.00', 2, 3, 1),
(8, '600.00', 1, 3, 11),
(9, '400.00', 2, 4, 1),
(10, '600.00', 1, 4, 11),
(11, '400.00', 2, 5, 1),
(12, '600.00', 1, 5, 11),
(13, '400.00', 3, 6, 1),
(14, '600.00', 1, 6, 11),
(15, '400.00', 2, 7, 1),
(16, '600.00', 1, 7, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product`
--
-- Criação: 13-Nov-2021 às 00:02
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `price_buy` decimal(10,2) DEFAULT NULL,
  `price_sell` decimal(10,2) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `product`
--

INSERT INTO `product` (`id_product`, `description`, `price_buy`, `price_sell`, `amount`, `id_category`) VALUES
(1, 'Processador i5 2.0GHz', '150.00', '300.00', 30, 2),
(2, 'Processador i7 2.8GHz', '200.00', '400.00', 30, 2),
(3, 'Processador i3 2.2GHz', '100.00', '200.00', 25, 2),
(4, 'Memória kingston 8gb', '100.00', '200.00', 20, 1),
(5, 'Memória kingston 16gb', '200.00', '300.00', 20, 1),
(6, 'Memória sandisk 4gb', '80.00', '120.00', 20, 1),
(7, 'HD 1TB Samsung', '200.00', '300.00', 40, 4),
(8, 'HD 2TB Samsung', '300.00', '400.00', 40, 4),
(9, 'SSD HD 120GB Samsung', '500.00', '800.00', 15, 4),
(10, 'HD SSD 200GB Seagate', '1000.00', '1500.00', 15, 4),
(11, 'Placa Mãe Intel P8', '300.00', '600.00', 35, 3),
(12, 'Placa Mãe Asus XM', '340.00', '650.00', 35, 3),
(13, 'Mouse Wireless Multilaser', '30.00', '60.00', 30, 5),
(14, 'Mouse com fio Multilaser', '20.00', '40.00', 30, 5),
(15, 'Teclado com fio Multilaser', '10.00', '20.00', 30, 5),
(16, 'Teclado wirelless Multilaser', '30.00', '60.00', 30, 5),
(17, 'Monitor LG 15', '300.00', '600.00', 20, 6),
(18, 'Monitor Dell 14', '200.00', '500.00', 20, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `request`
--
-- Criação: 16-Nov-2021 às 20:11
--

CREATE TABLE `request` (
  `id_request` int(11) NOT NULL,
  `caledary` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_employee` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `request`
--

INSERT INTO `request` (`id_request`, `caledary`, `total`, `id_employee`, `id_client`) VALUES
(1, NULL, NULL, 0, 0),
(2, '2017-05-23', '1400.00', 7, 4),
(3, '2017-02-22', '1400.00', 7, 5),
(4, '2016-03-22', '1400.00', 7, 2),
(5, '2016-03-22', '1400.00', 7, 3),
(6, '2016-02-12', '1400.00', 7, 6),
(7, '2017-02-10', '1400.00', 8, 2),
(8, '2017-05-10', '1800.00', 8, 8),
(9, '2014-09-15', '1400.00', 8, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `state`
--
-- Criação: 16-Nov-2021 às 20:48
--

CREATE TABLE `state` (
  `id_state` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uf` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `state`
--

INSERT INTO `state` (`id_state`, `name`, `uf`) VALUES
(1, 'Paraná', 'PR'),
(2, 'São Paulo', 'SP'),
(3, 'Santa Catarina', 'SC'),
(4, 'Rio Grande do Sul', 'RS');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Índices para tabela `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `id_state` (`id_state`);

--
-- Índices para tabela `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_city` (`id_city`);

--
-- Índices para tabela `departament`
--
ALTER TABLE `departament`
  ADD PRIMARY KEY (`id_departament`);

--
-- Índices para tabela `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `id_manager` (`id_manager`),
  ADD KEY `id_departament` (`id_departament`);

--
-- Índices para tabela `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id_item_order`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Índices para tabela `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Índices para tabela `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id_request`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_employee` (`id_employee`);

--
-- Índices para tabela `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id_state`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `city`
--
ALTER TABLE `city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `departament`
--
ALTER TABLE `departament`
  MODIFY `id_departament` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id_item_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `request`
--
ALTER TABLE `request`
  MODIFY `id_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `state`
--
ALTER TABLE `state`
  MODIFY `id_state` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`id_state`) REFERENCES `state` (`id_state`);

--
-- Limitadores para a tabela `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_City` FOREIGN KEY (`id_City`) REFERENCES `city` (`id_city`),
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`);

--
-- Limitadores para a tabela `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_manager`) REFERENCES `employee` (`id_employee`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`id_departament`) REFERENCES `departament` (`id_departament`);

--
-- Limitadores para a tabela `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `request` (`id_request`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Limitadores para a tabela `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Limitadores para a tabela `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id_employee`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Extraindo dados da tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('loja', 2, 'estrutura-loja'),
('rh_company', 3, 'structure-RH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--
-- Criação: 05-Out-2021 às 18:01
-- Última actualização: 25-Nov-2021 às 20:32
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"rh_company\",\"table\":\"employee\"},{\"db\":\"rh_company\",\"table\":\"departament\"},{\"db\":\"rh_company\",\"table\":\"activity\"},{\"db\":\"rh_company\",\"table\":\"project\"},{\"db\":\"rh_company\",\"table\":\"employee_projecty\"},{\"db\":\"rh_company\",\"table\":\"education_level\"},{\"db\":\"loja\",\"table\":\"employee\"},{\"db\":\"loja\",\"table\":\"client\"},{\"db\":\"loja\",\"table\":\"product\"},{\"db\":\"loja\",\"table\":\"category\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Extraindo dados da tabela `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('loja', 'category', 2, 53, 323),
('loja', 'city', 2, 53, 49),
('loja', 'client', 2, 243, 16),
('loja', 'departament', 2, 691, 285),
('loja', 'employee', 2, 686, 9),
('loja', 'order_item', 2, 495, 249),
('loja', 'product', 2, 269, 237),
('loja', 'request', 2, 476, 51),
('loja', 'state', 2, 44, 172),
('rh_company', 'activity', 3, 771, 39),
('rh_company', 'departament', 3, 51, 30),
('rh_company', 'education_level', 3, 61, 261),
('rh_company', 'employee', 3, 326, 176),
('rh_company', 'employee_projecty', 3, 675, 279),
('rh_company', 'project', 3, 554, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'loja', 'product', '{\"sorted_col\":\"`product`.`price_sell`  ASC\"}', '2021-11-22 00:07:07'),
('root', 'rh_company', 'education_level', '{\"sorted_col\":\"`education_level`.`description` ASC\"}', '2021-11-24 02:16:07'),
('root', 'rh_company', 'employee', '{\"sorted_col\":\"`employee`.`id_education_level`  DESC\"}', '2021-11-24 01:59:25'),
('root', 'rh_company', 'employee_projecty', '{\"sorted_col\":\"`employee_projecty`.`date_end` DESC\"}', '2021-11-23 04:21:03'),
('root', 'rh_company', 'project', '{\"sorted_col\":\"`project`.`id_project` ASC\"}', '2021-11-23 19:50:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--
-- Criação: 05-Out-2021 às 18:01
-- Última actualização: 25-Nov-2021 às 21:07
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-25 21:07:36', '{\"NavigationWidth\":251,\"Console\\/Mode\":\"show\",\"Console\\/Height\":95.97668199999998250859789550304412841796875,\"Export\\/sql_dates\":true,\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"2fa\":{\"type\":\"db\",\"backend\":\"\",\"settings\":[]},\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--
-- Criação: 05-Out-2021 às 18:01
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `rh_company`
--
CREATE DATABASE IF NOT EXISTS `rh_company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rh_company`;

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
