/* Exclui o banco de dados */
DROP DATABASE 'nomeDoBanco'
/* Apagar tabela */
DROP TABLE `Persons`
/* Criar tabela em quaquer banco relacional */
CREATE TABLE client (
  id_client int(11) NOT NULL,
  FirstName varchar(30) NOT NULL,
  LastName varchar(50) NOT NULL,
  AddressName varchar(50),
  id_City int(11) DEFAULT '1' NOT NULL,
  email varchar(50),
  CONSTRAINT PK_Client PRIMARY KEY (id_client)
);
/* outra forma para o mysql */
CREATE TABLE client (
  id_client int(11) PRIMARY KEY,
  FirstName varchar(30) NOT NULL,
  LastName varchar(50) NOT NULL,
  AddressName varchar(50),
  id_City int(11) DEFAULT '1' NOT NULL,
  email varchar(50),
);
/* Adicionar id após a tabela já ter sido criada */
ALTER TABLE `client`
ADD (CONSTRAINT PK_Client PRIMARY KEY (id_client));
/* ou */
ALTER TABLE `client`
ADD (CONSTRAINT PRIMARY KEY (id_client));
/* Criar um chave composta */
CREATE TABLE < nome da tabela >(
  < nome do campo 1 > < tipo > [valor padão] [nulo],
  < nome do campo 2 > < tipo > [valor padão] [nulo],
...< nome do campo 2 > < tipo > [valor padão] [nulo],
  CONSTRAINT < nome do restrição > PRIMARY KEY (< campo 1 >, < campo 2 >, < campo n >),
);
/* Criar chava composta apos criar a tabela */
ALTER TABLE Conta
ADD PK_conta PRIMARY KEY (numero_conta, id_agencia);
/* ou */
ALTER TABLE Conta
ADD CONSTRAINT PRIMARY KEY (numero_conta, id_agencia);
/* Exclui a definição do primary key */
ALTER TABLE nome_da_tablela DROP PRIMARY KEY
  /* Relacionamento entre tabelas */
  CREATE TABLE client (
    id_client int(11) PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(30) NOT NULL,
    last_name varchar(50) NOT NULL,
    AddressName varchar(50),
    id_City int(11) DEFAULT '1' NOT NULL,
    email varchar(50),
    CONSTRAINT FK_City FOREIGN KEY (id_city) REFERENCES city(id_City)
  );
/* Criar uma ou mais colunas após a crialã da tabela */
ALTER TABLE `request`
ADD `id_employee` INT NOT NULL;
ALTER TABLE `request`
ADD `id_client` INT NOT NULL;
/* Criar realacinamento entre as tabelas após a criação das tabelas COLUMN,
 O ADD cria uma coluna dentro da tabela após a sua criação
 */
ALTER TABLE client
ADD CONSTRAINT FOREIGN KEY (id_city) REFERENCES city(id_City);
ALTER TABLE `city`
ADD CONSTRAINT FOREIGN KEY(id_state) REFERENCES `state`(id_state);
/* Criando um tabela */
CREATE TABLE request (
  id_request int(11) PRIMARY KEY AUTO_INCREMENT,
  caledary DATE(50),
  email varchar(50),
  id_city int(11) DEFAULT '1' NOT NULL,
  id_employee int(11) DEFAULT '1' NOT NULL,
  CONSTRAINT FK_city FOREIGN KEY (id_city) REFERENCES city(id_City)
);
/* Alterar nome da coluna */
ALTER TABLE `product` CHANGE `amount` `amoun` INT(11) NULL DEFAULT NULL;
/* Alterar nome da tabela */
RENAME TABLE tb1 TO tb2;
/* Mover coluna após outra */
ALTER TABLE `request` CHANGE `total` `total` DECIMAL(10, 2) NULL DEFAULT NULL
AFTER `caledary`;
/* Correção do error #1452
 
 ERROR 1452: Cannot add or update a child row: a foreign key constraint fails

 https://stackoverflow.com/questions/21659691/error-1452-cannot-add-or-update-a-child-row-a-foreign-key-constraint-fails
 */
/* ========= 1) For Session (recommended) =============*/
SET FOREIGN_KEY_CHECKS = 0;
/* ======= 2) Globally ============*/
SET GLOBAL FOREIGN_KEY_CHECKS = 0;

/* Inserir valores nas colunas das tabelas exemplo */
INSERT INTO `departament` (`id_departament`, `description`) VALUES (NULL, 'Financeiro');  
/* Trocar valores dos ids externos  */
UPDATE `employee` SET `id_departament` = '4' WHERE `employee`.`id_employee` = 6;
