USE MySqlGoItHomeWork;

ALTER TABLE projects
    ADD first_date datetime default CURRENT_TIMESTAMP;
