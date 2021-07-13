USE MySqlGoItHomeWork;

CREATE TABLE companies
(
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    name                VARCHAR(40),
    totalCostOfProjects DECIMAL,
    countProjects       INT,
    countDevelopers     INT
);

CREATE TABLE customers
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(40),
    budget     DECIMAL,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

CREATE TABLE developers
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(30)            NOT NULL,
    age         INT,
    gender      ENUM ('Male','Female') NOT NULL,
    email       VARCHAR(30),
    numberPhone BIGINT,
    company_id  INT,
    FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

CREATE TABLE skills
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    activities   ENUM ('Java','C++','C#','JS'),
    level        ENUM ('Junior','Middle','Senior')
);

CREATE TABLE projects
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(40),
    deadlines_days INT,
    company_id     INT,
    customer_id    INT,
    FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
);

CREATE TABLE developers_projects
(
    developer_id int NOT NULL,
    project_id   int NOT NULL,
    PRIMARY KEY (developer_id, project_id),
    FOREIGN KEY (developer_id) REFERENCES developers (id),
    FOREIGN KEY (project_id) REFERENCES projects (id)
);

CREATE TABLE projects_companies
(
    project_id int NOT NULL,
    company_id   int NOT NULL,
    PRIMARY KEY (project_id, company_id),
    FOREIGN KEY (project_id) REFERENCES projects (id),
    FOREIGN KEY (company_id) REFERENCES companies (id)
);

CREATE TABLE developers_skills
(
    developer_id int NOT NULL,
    skills_id   int NOT NULL,
    PRIMARY KEY (developer_id, skills_id),
    FOREIGN KEY (developer_id) REFERENCES developers (id),
    FOREIGN KEY (skills_id) REFERENCES skills (id)
);


