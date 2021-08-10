USE MySqlGoItHomeWork;

ALTER TABLE projects
    ADD cost DECIMAL;

UPDATE projects
SET cost = 50000
WHERE id = 1;

UPDATE projects
SET cost = 25000
WHERE id = 2;

UPDATE projects
SET cost = 70000
WHERE id = 3;