USE MySqlGoItHomeWork;

SELECT projects.name,MIN(projects.cost) AS min_cost,AVG(developers.salary) AS avgSalary
FROM developers_projects
         inner join developers on developers_projects.developer_id = developers.id
         inner join projects on developers_projects.project_id = projects.id
GROUP BY projects.name
ORDER BY min_cost limit 1;