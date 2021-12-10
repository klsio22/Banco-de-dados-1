/*
 =============  1 ====================
 */
SELECT departament.name,
  SUM(employee.salary) AS 'Total Salary of All Employees'
FROM employee
  JOIN departament USING(id_departament)
GROUP BY departament.name
  /*
   =============  2 ====================
   */
SELECT departament.name,
  COUNT(employee.id_departament)
FROM employee
  JOIN departament USING(id_departament)
GROUP BY departament.name
  /*
   =============  3 ====================
   */
SELECT COUNT(employee.id_departament) AS 'Number of employees',
  departament.name
FROM employee
  JOIN departament USING(id_departament)
GROUP by departament.name
HAVING departament.name LIKE 'D%'
  /*
   =============  4 ====================
   */
SELECT departament.name,
  COUNT(employee.id_departament) AS 'Number of employees'
FROM employee
  JOIN education_level USING(id_education_level)
  JOIN departament USING(id_departament)
GROUP by education_level.id_education_level
HAVING education_level.id_education_level >= 3;
/*
 =============  5 ====================
 */
SELECT departament.name,
  employee.gender,
  FORMAT(
    (
      (
        SUM(employee.salary) + SUM(employee.work_overtime)
      ) / 2
    ),
    2
  ) AS 'Average income'
FROM employee
  JOIN departament USING(id_departament)
GROUP BY employee.id_departament
HAVING COUNT(employee.id_departament) >= 2
  /*
   =============  6 ====================
   */
SELECT FORMAT(
    ((SUM(employee.salary)) / 2),
    2
  ) AS 'Average salary',
  FORMAT(
    (
      (SUM(employee.work_overtime)) / 2
    ),
    2
  ) AS 'Average Work Overtime'
FROM departament
  JOIN employee USING(id_departament)
GROUP BY employee.id_departament
HAVING ((SUM(employee.salary) / 2) > 1000)
  AND(
    (
      SUM(employee.work_overtime) / 2
    ) > 100
  )