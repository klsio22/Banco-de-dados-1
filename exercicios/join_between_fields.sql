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
SELECT employee.id_employee,
  last_name,
  project.id_project,
  description,
  id_activity,
  employee_projecty.date_end
FROM employee_projecty
  JOIN project USING(id_project)
  JOIN employee USING(id_employee)
WHERE employee_projecty.date_initial = '2015-08-01'
ORDER BY project.id_project,
  employee.id_employee
  /*
   ============= 6 ================
   */
SELECT project.id_departament,
  employee.last_name,
  project.description,
  employee_projecty.id_activity
FROM project
  JOIN employee_projecty USING(id_project)
  JOIN employee USING(id_employee)
WHERE project.id_departament = 3
ORDER BY project.description,
  project.date_initial
  /*
   ============= 7 ================
   */
SELECT project.id_departament,
  employee.last_name,
  project.description,
  project.id_project,
  employee_projecty.id_activity
FROM project
  JOIN employee_projecty USING(id_project)
  JOIN employee USING(id_employee)
WHERE project.id_departament BETWEEN 2 AND 3
ORDER BY project.id_departament,
  employee.last_name
  /*
   ============= 8 ================
   */
SELECT employee_projecty.id_activity,
  employee.first_name,
  project.date_initial,
  project.id_project,
  employee.last_name,
  employee_projecty.id_activity
FROM project
  JOIN employee_projecty USING(id_project)
  JOIN employee USING(id_employee)
WHERE project.date_initial = '2014-05-08'
ORDER BY project.id_departament,
  project.date_initial
  /*
   ============= 9 ================
   */
SELECT departament.id_departament,
  emplo.last_name as 'Employee',
  emplo.hiring_date,
  manager.last_name as 'Manager',
  manager.hiring_date
FROM employee emplo
  JOIN departament USING(id_departament)
  JOIN employee manager on departament.id_manager = manager.id_employee
WHERE (departament.id_departament = 3)
  AND emplo.hiring_date < manager.hiring_date
ORDER by emplo.last_name
  /*
   
   ============= 10 ================
   */