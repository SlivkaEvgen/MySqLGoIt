USE MySqlGoItHomeWork;

select activities,SUM(developers.salary) AS totalSalary
from developers_skills
         inner join developers on developers_skills.developer_id = developers.id
         inner join skills on developers_skills.skills_id = skills.id
WHERE activities = 'Java';
