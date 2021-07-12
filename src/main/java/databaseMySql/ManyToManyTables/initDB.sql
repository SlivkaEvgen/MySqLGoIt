USE MySqlGoItHomeWork;

# DROP TABLE IF EXISTS developerProjectRelation;
# DROP TABLE IF EXISTS skills;
# DROP TABLE IF EXISTS developers;
# DROP TABLE IF EXISTS projects;
# DROP TABLE IF EXISTS customers;
# DROP TABLE IF EXISTS companies;

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
    FOREIGN KEY (id) REFERENCES companies (Id) ON DELETE CASCADE
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
    FOREIGN KEY (id) REFERENCES companies (Id) ON DELETE CASCADE
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
    FOREIGN KEY (id) REFERENCES developers (Id) ON DELETE CASCADE,
    FOREIGN KEY (id) REFERENCES companies (Id) ON DELETE CASCADE,
    FOREIGN KEY (id) REFERENCES customers (Id) ON DELETE CASCADE
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
    FOREIGN KEY (project_id) REFERENCES developers (id),
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

# ALTER TABLE skills
#     ADD CONSTRAINT developer_id FOREIGN KEY (id)
#         REFERENCES skills (id) ON DELETE CASCADE;
#     company_id  INT                    NOT NULL
#     FOREIGN KEY (company_id) REFERENCES companies (Id)
# FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE CASCADE,
#     FOREIGN KEY (CustomerId) REFERENCES Customers(Id) ON DELETE CASCADE
#     CONSTRAINT skills_id PRIMARY KEY (id),
#     FOREIGN KEY (id) REFERENCES developers (id) ON DELETE CASCADE
#     CONSTRAINT skills_id FOREIGN KEY skills (id)
#         REFERENCES developers (id)
# create table developerProjectRelation
# (
#     developer_id int not null,
#     project_id   int not null,
#     constraint developer_id
#         unique (developer_id, project_id),
#     constraint developerProjectRelation_ibfk_1
#         foreign key (developer_id) references developers (id),
#     constraint developersProjectRelation_ibfk_2
#         foreign key (project_id) references projects (id)
# );
# ALTER TABLE skills
#     ADD CONSTRAINT developer_id FOREIGN KEY developers(developer_id)
#         REFERENCES skills (id) ON DELETE CASCADE;
#
# ALTER TABLE developers
#     ADD CONSTRAINT developer_id FOREIGN KEY (company_id)
#         REFERENCES developers (id) ON DELETE CASCADE;
#
# ALTER TABLE projects
#     ADD CONSTRAINT projects_id FOREIGN KEY (company_id)
#         REFERENCES companies (id);
#
# ALTER TABLE projects
#     ADD CONSTRAINT customer_id FOREIGN KEY (customer_id)
#         REFERENCES customers (id);
#
# ALTER TABLE customers
#     ADD CONSTRAINT company_id FOREIGN KEY (company_id)
#         REFERENCES companies (id);

# create index project_id
#     on developerProjectRelation (project_id);


# ALTER TABLE skills
#     ADD CONSTRAINT developerSkills
#         FOREIGN KEY (id)
#             REFERENCES developers (id);
#

