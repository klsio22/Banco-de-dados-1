/*
 =============  1 ====================
 */
SELECT CONCAT(
        employee.first_name,
        ' ',
        employee.last_name
    ) AS Nome,
    departament.name,
    education_level.description,
    (
        (
            employee.salary + employee.work_overtime
        ) * 1.05
    ) AS Aumento
FROM employee
    JOIN education_level USING(id_education_level)
    JOIN departament USING(id_departament)
WHERE (
        (
            employee.salary + employee.work_overtime
        ) * 1.05
    ) <= 20000
ORDER BY employee.last_name
    /*
     =============  2 ================
     */
SELECT employee.last_name,
    departament.name,
    education_level.description,
    employee.salary + 1200 as 'New Salary',
    FORMAT((employee.work_overtime / 2), 2) as 'Work Orvertime'
FROM employee
    JOIN education_level USING(id_education_level)
    JOIN departament USING(id_departament)
WHERE (
        id_education_level BETWEEN 2 and 7
    )
ORDER BY employee.last_name
    /*
     =============  3 ================
     */
SELECT employee.last_name,
    departament.name,
    employee.salary,
    employee.salary - 100 AS Reduced
FROM employee
    JOIN departament USING(id_departament)
WHERE departament.name = 'Testes'
    OR ((employee.salary * 0.8) >= 5000)
    OR ((employee.salary * 2.2) <= 3000)
ORDER BY employee.last_name,
    departament.name,
    employee.salary,
    Reduced
    /*
     =============  4 ================
     */
SELECT dep.id_departament,
    dep.name,
    COALESCE(ger.name, 'Unknown'),
    employee.last_name
FROM departament dep
    LEFT JOIN departament ger ON dep.id_departament_management = ger.id_departament
    JOIN employee ON dep.id_manager = employee.id_employee
    /*
     =============  5 ================
     */
SELECT employee.id_employee,
    employee.last_name,
        FORMAT(
            (
                DATEDIFF(
                    employee.hiring_date,
                    employee.birth_date
                ) / 365
            ),
            0
        )
FROM employee
WHERE (
        DATEDIFF(
            employee.hiring_date,
            employee.birth_date
        ) / 365
    ) < 25
ORDER BY DATEDIFF(CURDATE(), employee.birth_date)
    /*
     =============  6 ================
     */
SELECT project.description,
    MONTH(project.date_initial) AS 'Month',
    YEAR(project.date_initial) AS 'Year Initial',
    employee.last_name
FROM project
    JOIN employee ON id_manager = id_employee
WHERE project.date_end > '2015-01-01'
ORDER BY project.id_project;
/*
 =============  7 ================
 */
SELECT project.description,
    project.id_project,
    project.description,
    FORMAT(
        (
            datediff(
                project.date_end,
                project.date_initial
            ) / 7
        ),
        1
    ) as 'Duration in weeks'
FROM project
WHERE YEAR(project.date_initial) >= '2014'
ORDER BY project.id_project;
/*
 =============  8 ================
 */

 SELECT
    project.id_project,
    project.date_initial,
    DATE_ADD(
        project.date_initial,
        INTERVAL(
            DATEDIFF(
                project.date_end,
                project.date_initial
            ) * 1.1
        ) DAY
    ) AS 'Data Final Real'
FROM
    project
WHERE
    YEAR(project.date_initial) BETWEEN 2013 AND 2016
ORDER BY
    project.id_project;