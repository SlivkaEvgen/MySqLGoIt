USE MySqlGoItHomeWork;

INSERT INTO companies(id,name)
VALUES (1,'GoIT'),
       (2,'StarsIT'),
       (3,'UpIT');

INSERT INTO customers(id,name, budget,company_id)
VALUES (1,'RichMan1', 100000,1),
       (2,'RichMan2', 200000,2),
       (3,'RichMan3', 300000,3);


INSERT INTO developers(id,name, age, gender, email, number_phone,company_id)
VALUES (1,'Вася', 35, 'Male', 'abc@com.ua', 8765431,1),
       (2,'Коля', 25, 'Male', 'abc1@com.ua', 8765432,2),
       (3,'Костя', 26, 'Male', 'abc2@com.ua', 8765433,3),
        (4,'Витя', 27, 'Male', 'abc3@com.ua', 8765434,1),
        (5,'Юра', 28, 'Male', 'abc4@com.ua', 8765435,2),
        (6,'Ира', 29, 'Female', 'abc5@com.ua', 8765436,3),
        (7,'Дима', 30, 'Male', 'abc6@com.ua', 8765437,3),
        (8,'Катя', 32, 'Female', 'abc7@com.ua', 8765438,2),
        (9,'Антон', 33, 'Male', 'abc8@com.ua', 8765439,1),
        (10,'Лена', 36, 'Female', 'abc9@com.ua', 8765440,3),
        (11,'Маша', 40, 'Female', 'abc10@com.ua', 8765441,2),
        (12,'Миша', 42, 'Male', 'abc11@com.ua', 8765442,1);

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

INSERT INTO developers_skills(developer_id, skills_id)
VALUES (1,1),
       (2,5),
       (3,9),
       (4,3),
       (5,8),
       (6,7),
       (7,6),
       (8,5),
       (9,4),
       (10,3),
       (11,2),
       (12,1);

INSERT INTO projects(id,name,company_id,customer_id)
VALUES (1,'Bot',1,1),
       (2,'Car',2,2),
       (3,'School',3,3);

 INSERT INTO projects_companies(project_id, company_id)
 VALUES (1,1),
        (2,2),
        (3,3);

INSERT INTO developers_projects(developer_id, project_id)
VALUES (1,1),
       (2,2),
       (3,3),
       (4,1),
       (5,2),
       (6,3),
       (7,3),
       (8,2),
       (9,1),
       (10,3),
       (11,2),
       (12,1);





