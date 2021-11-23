/* 
 =============  2  ============= 
 */
SELECT id_employee,
  last_name,
  birth_date,
  salary
FROM employee
WHERE salary > 1000
ORDER BY salary DESC
  /*
   =============   3  ====================
   */
SELECT last_name,
  first_name,
  id_departament,
  birth_date,
  salary
FROM employee
WHERE salary > 500
  AND birth_date < '1995-01-01'
  AND birth_date > '1993-12-30'
ORDER BY id_departament DESC,
  salary ASC
  /*
   =============   4  ====================
   */
SELECT DISTINCT id_education_level
FROM `employee`
ORDER BY `id_education_level` DESC
  /*
   =============   5  ====================
   */
SELECT last_name,
  salary,
  work_overtime,
  gender
FROM employee
WHERE (gender = 'M')
  AND(
    salary > 500
    OR work_overtime > 200
  )
  /*
   =============   6  ====================
   */
SELECT last_name,
  salary,
  work_overtime
FROM employee
WHERE (birth_date >= '1986-01-01')
  AND(
    salary > 1000
    AND work_overtime < 500
  )
  /*
   =============   7  ====================
   */
SELECT last_name,
  salary,
  work_overtime
FROM employee
WHERE (
    salary > 1000
    AND work_overtime > 100
  )
  OR(
    id_education_level > 4
    AND salary > 2000
  )
ORDER BY last_name
  /*
   =============   8 ====================
   */
SELECT last_name,
  salary,
  work_overtime
FROM employee
WHERE salary > 1000
  AND work_overtime BETWEEN 400 AND 500
  AND id_education_level > 5
ORDER BY last_name
  /*
   =============   9  ====================
   */
SELECT last_name,
  salary,
  work_overtime
FROM employee
WHERE (last_name LIKE 'G%')
  AND(
    salary BETWEEN 1000 AND 4000
  )
  AND(
    gender = 'M'
    OR work_overtime > 200
  )
ORDER BY last_name
  /*
   =============   10  ====================
   */
SELECT *
FROM `departament`
WHERE id_departament_management is null
  /*
   =============   11 ====================
   */
SELECT *
FROM `departament`
WHERE NAME LIKE 'D%S'
  AND id_manager IS NOT NULL
  /*
   =============   12 ====================
   */
SELECT id_departament
FROM `project`
WHERE description LIKE '%sistema%'
  /*
   =============   13 ====================
   */
SELECT last_name,
  salary,
  work_overtime
FROM employee
WHERE salary < 5000
  AND work_overtime > 0
LIMIT 0, 2
  /*
   =============   14 ====================
   */
SELECT last_name,
  salary,
  work_overtime
FROM employee
WHERE salary BETWEEN 500 AND 2000
ORDER BY last_name
LIMIT 2, 2