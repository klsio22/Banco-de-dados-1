SELECT employee.first_name,
  departament.name,
  employee.salary,
  employee.work_overtime AS Bruto,
  (
    (
      employee.salary + employee.work_overtime
    ) * 0.11
  ) AS desconto,
  (
    (
      employee.salary + employee.work_overtime
    ) * 0.89
  ) AS `Liquid`
FROM employee
  JOIN departament USING(id_departament)
WHERE (
    (
      employee.salary + employee.work_overtime
    ) * 0.89
  ) > 2000
  /*============== Colunas null (Coalesce) ====================*/
SELECT employee.first_name,
  COALESCE(employee.salary, 0),
  COALESCE(employee.work_overtime, 0),
  COALESCE(employee.salary, 0) + COALESCE(employee.work_overtime, 0) AS Salary_total
FROM employee;
/* 
 1 - CEILING: Arredonda os valores para cima
 2 - FLOOR:Arredonda os valores para baixo
 3 - ROUND: Arredonda para o inteiro mais próximo. É possível determinar o número de
 casas decimais que se deseja exibir o resultado.
 4 - TRUNCATE: Elimina casas decimais, de acordo com o parametro passado.
 5 - FORMAT: Formata os valores com o número de casas decimais passado como
 parâmetro.
 */



/*  Para retornar a data atual do servidor de banco de dados deve-se utilizara função CURDATE() ou
 CURRENT_DATE(), como ilustra o exemplo abaixo: */
SELECT CURDATE();
SELECT CURRENT_DATE();
/* 
 
 A função DATE_FORMAT() possibilita formatar uma data de forma customizada, de acordo com
 as necessidades:
 */
DATE_FORMAT(< Data_para_Formatar >, < Formato_Desejado >)
SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y');