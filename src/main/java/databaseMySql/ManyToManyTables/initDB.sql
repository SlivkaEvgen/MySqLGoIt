USE MySqlGoItHomeWork;

CREATE TABLE IF NOT EXISTS companies
(
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    name                VARCHAR(40) NOT NULL ,
    total_cost_projects DECIMAL
);

CREATE TABLE IF NOT EXISTS customers
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(40) NOT NULL,
    budget     DECIMAL NOT NULL,
    company_id INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS developers
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(30) NOT NULL,
    age         INT NOT NULL ,
    gender      ENUM ('Male','Female') NOT NULL,
    email       VARCHAR(30) NOT NULL,
    number_phone BIGINT NOT NULL,
    company_id  INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS skills
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    activities   ENUM ('Java','C++','C#','JS') NOT NULL,
    level        ENUM ('Junior','Middle','Senior') NOT NULL
);

CREATE TABLE IF NOT EXISTS projects
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(40) NOT NULL,
    company_id     INT NOT NULL,
    customer_id    INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS developers_projects
(
    developer_id int NOT NULL,
    project_id   int NOT NULL,
    PRIMARY KEY (developer_id, project_id),
    FOREIGN KEY (developer_id) REFERENCES developers (id),
    FOREIGN KEY (project_id) REFERENCES projects (id)
);
# DROP TABLE projects_companies;
# CREATE TABLE IF NOT EXISTS projects_companies
# (
#     project_id int NOT NULL,
#     company_id   int NOT NULL,
#     PRIMARY KEY (project_id, company_id),
#     FOREIGN KEY (project_id) REFERENCES projects (id),
#     FOREIGN KEY (company_id) REFERENCES companies (id)
# );

CREATE TABLE IF NOT EXISTS developers_skills
(
    developer_id int NOT NULL,
    skills_id   int NOT NULL,
    PRIMARY KEY (developer_id, skills_id),
    FOREIGN KEY (developer_id) REFERENCES developers (id),
    FOREIGN KEY (skills_id) REFERENCES skills (id)
);


