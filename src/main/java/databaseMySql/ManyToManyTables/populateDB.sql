USE MySqlGoItHomeWork;

INSERT INTO companies(id,name)
VALUES (1,'GoIT'),
       (2,'StarsIT'),
       (3,'UpIT');
#        ('NewIT',3,3,3),

INSERT INTO customers(id,name, budget,company_id)
VALUES (1,'RichMan1', 100000,1),
       (2,'RichMan2', 200000,2),
       (3,'RichMan3', 300000,3);

INSERT INTO developers(id, name, age, gender, email, numberPhone,company_id)
VALUES (1, 'Вася', 35, 'Male', 'abc@com.ua', 8765431,1),
       (2, 'Колян', 25, 'Male', 'abc1@com.ua', 8765432,2),
       (3, 'Колян1', 26, 'Male', 'abc2@com.ua', 8765433,3);
#        (4, 'Колян2', 27, 'Male', 'abc3@com.ua', 8765434,1),
#        (5, 'Юра', 20, 'Male', 'abc4@com.ua', 8765435,2);

INSERT INTO skills(id,activities, level)
VALUES (1,'Java', 'Senior'),
       (2,'JS', 'Senior'),
       (3,'C++', 'Senior'),
       (4,'C#', 'Senior'),
       (5, 'Java', 'Middle'),
       (6, 'JS', 'Middle'),
       (7, 'C++', 'Middle'),
       (8, 'C#', 'Middle'),
       (9, 'Java', 'Junior'),
       (10, 'JS', 'Junior'),
       (11, 'C++', 'Junior'),
       (12, 'C#', 'Junior');


INSERT INTO projects(id,name, deadlines_days,company_id,customer_id)
VALUES (1,'Bot', 45,1,1),
       (2,'Car', 70,2,2),
       (3,'School',55,2,2);
#        (3,'GoItProduct',3),
#        (5,'GoItSchool',5),
INSERT INTO developers_skills(developer_id, skills_id)
VALUES (1,1),
       (2,5),
       (3,9);

INSERT INTO projects_companies(project_id, company_id)
VALUES (1,1),
       (2,2),
       (3,3);

INSERT INTO developers_projects(developer_id, project_id)
VALUES (1,1),
       (2,2),
       (3,3);





