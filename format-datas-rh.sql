/* ===============  */
INSERT INTO `activity`(`id_activity`, `description`)
VALUES(NULL, 'Gerência'),
  (NULL, 'Programação'),
  (NULL, 'Analise de Sistemas'),
  (NULL, 'Suporte'),
  (NULL, 'Vendas'),
  (NULL, 'Teste'),
  (NULL, 'Implantação'),
  (NULL, 'Manuteção de Rede'),
  (NULL, 'Manuteção de BD'),
  (NULL, 'Auxiliar Financeiro');
/* ============== */
INSERT INTO `departament` (
    `id_departament`,
    `name`,
    `id_departament_management`
  )
VALUES (NULL, 'Presidência', NULL),
  (NULL, 'Diretorias', 1),
  (NULL, 'Analise de Sistemas', 2),
  (NULL, 'Desenvolvimento de Sistemas', 3),
  (NULL, 'Testes', 3),
  (NULL, 'Suporte', 3),
  (NULL, 'Vendas', 2),
  (NULL, 'Financeiro', 2);
/* ============== */
INSERT INTO `education_level` (`id_education_level`, `description`)
VALUES (NULL, 'Ensino Médio'),
  (NULL, 'Curso Tecnico'),
  (NULL, 'Superior'),
  (NULL, 'Especialização'),
  (NULL, 'Mestrado'),
  (NULL, 'Doutorado');
/* ============== */
INSERT INTO `employee` (
    `id_employee`,
    `first_name`,
    `last_name`,
    `id_departament`,
    `number_phone`,
    `birth_date`,
    `hiring_date`,
    `gender`,
    `salary`,
    `work_overtime`,
    `id_education_level`
  )
VALUES (
    NULL,
    'Mauricio',
    'Galiote',
    '1',
    '44999577675',
    '1966-08-23',
    '2000-03-08',
    'M',
    '15000',
    '2000',
    '6'
  ),
  (
    NULL,
    'Alexandre',
    'Matos',
    '2',
    '44999572134',
    '1977-02-26',
    '2003-04-02',
    'M',
    '10000',
    '1000',
    '5'
  ),
  (
    NULL,
    'Cuca',
    'da Silva',
    '3',
    '44999432114',
    '1978-09-12',
    '2005-01-09',
    'M',
    '8000',
    '500',
    '4'
  ),
  (
    NULL,
    'Dudu',
    'Hernandez',
    '4',
    '44999573232',
    '1992-02-11',
    '2009-05-27',
    'M',
    '16000',
    '3000',
    '3'
  ),
  (
    NULL,
    'Roger',
    'Guedes',
    '4',
    '44999578899',
    '1993-06-21',
    '2009-04-22',
    'M',
    '3000',
    '1000',
    '3'
  ),
  (
    NULL,
    'Edu',
    'Dracena',
    '4',
    '44999323221',
    '1998-04-28',
    '2010-03-17',
    'M',
    '2000',
    '0',
    '3'
  ),
  (
    NULL,
    'Paulo',
    'Nascimento',
    '4',
    '44999575566',
    '1999-03-14',
    '2011-05-11',
    'M',
    '5000',
    '2000',
    '3'
  ),
  (
    NULL,
    'Talles',
    'Santos',
    '5',
    '44999563222',
    '1993-02-21',
    '2012-06-27',
    'M',
    '1000',
    '1000',
    '3'
  ),
  (
    NULL,
    'Luiz',
    'Guerra',
    '5',
    '44999118822',
    '1996-09-21',
    '2013-08-08',
    'M',
    '2000',
    '500',
    '2'
  ),
  (
    NULL,
    'Matheus',
    'Macedo',
    '6',
    '44999114546',
    '1997-02-25',
    '2003-09-02',
    'M',
    '1000',
    '200',
    '2'
  ),
  (
    NULL,
    'Juliana',
    'Paz',
    '7',
    '44944114546',
    '1991-03-25',
    '2004-05-02',
    'F',
    '1000',
    '200',
    '2'
  ),
  (
    NULL,
    'Maria',
    'Silva',
    '7',
    '44992114546',
    '1994-06-25',
    '2001-09-02',
    'F',
    '1000',
    '200',
    '2'
  ),
  (
    NULL,
    'João',
    'Roberto',
    '8',
    '44996614546',
    '1994-06-25',
    '2009-09-02',
    'M',
    '3000',
    '200',
    '2'
  ),
  (
    NULL,
    'João',
    'Coelho',
    '8',
    '44991114546',
    '1999-06-25',
    '2003-05-02',
    'M',
    '3000',
    '200',
    '2'
  );
/* ============== */
/* 
 UPDATE `departament` SET `id_manager` = '1' WHERE `id_departament` = 1;
 UPDATE `departament` SET `id_manager` = '2' WHERE `id_departament` = 2;
 UPDATE `departament` SET `id_manager` = '3' WHERE `id_departament` = 3;
 UPDATE `departament` SET `id_manager` = '4' WHERE `id_departament` = 4;
 UPDATE `departament` SET `id_manager` = '8' WHERE `id_departament` = 5;
 UPDATE `departament` SET `id_manager` = '10' WHERE `id_departament` = 6;
 UPDATE `departament` SET `id_manager` = '11' WHERE `id_departament` = 7;
 UPDATE `departament` SET `id_manager` = '13' WHERE `id_departament` = 8; 
 
 */
/* ============== */
INSERT INTO `project` (
    `id_project`,
    `description`,
    `date_init`,
    `date_end`,
    `id_departament`,
    `cust`,
    `id_manager`,
    `id_project_main`
  )
VALUES (
    NULL,
    'Sistema de Supermercado',
    '2014-05-08',
    '2017-12-31',
    '3',
    '100000',
    '3',
    NULL
  ),
  (
    NULL,
    'Site de Supermercado',
    '2015-01-01',
    '2017-12-31',
    '3',
    '50000',
    '3',
    1
  ),
  (
    NULL,
    'Sistema de Padaria',
    '2017-01-01',
    '2017-12-31',
    '3',
    '30000',
    '4',
    NULL
  ),
  (
    NULL,
    'Melhoria do Suporte',
    '2014-05-08',
    '2017-12-31',
    '3',
    '100000',
    '6',
    NULL
  ),
  (
    NULL,
    'Melhoria da Qualidade do Software',
    '2014-01-01',
    '2015-12-31',
    '3',
    '5000',
    '5',
    NULL
  ),
  (
    NULL,
    'Sistema de Venda por Celular',
    '2011-01-01',
    '2015-12-31',
    '4',
    '35000',
    '5',
    NULL
  ),
  (
    NULL,
    'Site de Vendas Online',
    '2014-01-01',
    '2015-12-31',
    '4',
    '55000',
    '5',
    6
  );
/* ============== */
INSERT INTO `employee_projecty` (
    `id_project`,
    `id_employee`,
    `id_activity`,
    `time_spent`,
    `date_initial`,
    `date_end`
  )
VALUES (
    '1',
    '3',
    '1',
    '12:00:00',
    '2014-05-08',
    '2017-12-31'
  ),
  (
    '1',
    '4',
    '3',
    '50:00:00',
    '2015-07-03',
    '2017-12-31'
  ),
  (
    '1',
    '5',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '1',
    '6',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '1',
    '7',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '1',
    '6',
    '6',
    '20:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '2',
    '3',
    '1',
    '12:00:00',
    '2014-05-08',
    '2017-12-31'
  ),
  (
    '2',
    '4',
    '3',
    '50:00:00',
    '2015-07-03',
    '2017-12-31'
  ),
  (
    '2',
    '5',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '2',
    '6',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '2',
    '7',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '2',
    '8',
    '6',
    '20:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '3',
    '3',
    '1',
    '12:00:00',
    '2014-05-08',
    '2017-12-31'
  ),
  (
    '3',
    '4',
    '3',
    '50:00:00',
    '2015-07-03',
    '2017-12-31'
  ),
  (
    '3',
    '5',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '3',
    '6',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '3',
    '7',
    '2',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '3',
    '9',
    '6',
    '20:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '4',
    '3',
    '1',
    '12:00:00',
    '2014-05-08',
    '2017-12-31'
  ),
  (
    '4',
    '4',
    '3',
    '50:00:00',
    '2015-07-03',
    '2017-12-31'
  ),
  (
    '4',
    '5',
    '4',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '4',
    '6',
    '4',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '4',
    '7',
    '4',
    '100:00:00',
    '2015-08-01',
    '2017-10-15'
  ),
  (
    '4',
    '9',
    '4',
    '20:00:00',
    '2015-08-01',
    '2017-10-15'
  );