USE MySqlGoItHomeWork;

SELECT  SUM(developers.salary) AS sum_salary,projects.name
FROM developers_projects
         inner join developers on developers_projects.developer_id = developers.id
         inner join projects on developers_projects.project_id = projects.id
GROUP BY projects.name
ORDER BY MAX(sum_salary) limit 1;