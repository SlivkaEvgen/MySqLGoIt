USE MySqlGoItHomeWork;

ALTER TABLE projects
    ADD cost DECIMAL;

UPDATE projects
SET cost = 26700
WHERE id = 1;

UPDATE projects
SET cost = 18360
WHERE id = 2;

UPDATE projects
SET cost = 10350
WHERE id = 3;