USE MySqlGoItHomeWork;

SELECT projects.name,MIN(projects.cost) AS min_cost
FROM projects
GROUP BY projects.name
ORDER BY min_cost limit 1;