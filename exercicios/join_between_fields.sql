/*
 ============= 1 ================
 */
SELECT employee.first_name,
  last_name,
  name
FROM employee
  JOIN departament ON departament.id_departament = employee.id_departament
ORDER BY last_name
  /* OU */
SELECT employee.first_name,
  last_name,
  NAME
FROM employee
  JOIN departament USING(id_departament)
ORDER BY last_name
  /*
   ============= 2 ================
   */
SELECT NAME,
  employee.first_name,
  last_name
FROM departament
  JOIN employee ON id_manager = id_employee
ORDER BY NAME
  /*
   ============= 3 ================
   */
SELECT DISTINCT employee_projecty.id_activity,
  project.id_project,
  project.description,
  activity.description
FROM project
  JOIN employee_projecty USING(id_project)
  JOIN activity USING(id_activity)
WHERE project.description LIKE 'M%'
ORDER BY project.id_project
  /*
   ============= 4 ================
   */
SELECT DISTINCT employee.id_employee,
  employee.last_name,
  project.id_project,
  project.description
FROM project
  JOIN employee_projecty USING(id_project)
  JOIN employee USING(id_employee)
WHERE project.id_project = 4
ORDER BY employee.id_employee;

 /*
   ============= 5 ================
   */
SELECT
    employee.id_employee,
    last_name,
    project.id_project,
    description,
    id_activity,
    employee_projecty.date_end
FROM
    employee_projecty
JOIN project USING(id_project)
JOIN employee USING(id_employee)
WHERE
    employee_projecty.date_initial = '2015-08-01'
ORDER BY
    project.id_project,
    employee.id_employee