/*
 ============= 1 questão ================
 */
SELECT employee.id_employee,
   last_name,
   project.id_project,
   project.description,
   employee_projecty.id_activity,
   activity.description,
   employee_projecty.date_end
FROM activity
   JOIN employee_projecty USING(id_activity)
   JOIN project USING(id_project)
   JOIN employee USING(id_employee)
WHERE employee_projecty.date_initial BETWEEN '2015-07-01' AND '2015-12-31'
ORDER BY employee_projecty.date_initial ASC
   /*
    ============= 2 ================
    */
SELECT departament.id_departament,
   emplo.last_name AS 'Employee Last name',
   emplo.salary AS 'Employee Salary',
   manager.last_name AS 'Manager Last name',
   manager.salary AS 'Manager salary'
FROM employee emplo
   JOIN departament USING(id_departament)
   JOIN employee manager ON departament.id_manager = manager.id_employee
WHERE emplo.salary > manager.salary
ORDER BY departament.id_departament
   /*
    ============= 3 ================
    */
SELECT employee.id_employee,
   employee.last_name,
   departament.name,
   employee.salary,
   education_level.description
FROM departament
   JOIN employee USING(id_departament)
   JOIN education_level USING (id_education_level)
WHERE departament.name LIKE 'Desenvolvimento de Sistemas'
   AND employee.salary > 500
ORDER BY employee.last_name
   /*
    ============= 4 ================
    */
SELECT
    employee.id_employee,
    employee.last_name,
    education_level.description
FROM
    education_level
JOIN employee USING(id_education_level)
WHERE
    education_level.description LIKE 'Doutorado'
ORDER BY
    employee.last_name