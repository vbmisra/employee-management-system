DROP DATABASE IF EXISTS cms_db;
CREATE DATABASE cms_db;

USE cms_db;

CREATE TABLE department (
    id INT NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id INT NOT NULL,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
    ON DELETE SET NULL
)

CREATE TABLE employee (
    id INT NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
    ON DELETE SET NULL,
    FOREIGN KEY (manager_id) REFERENCES employee(id)
    ON DELETE SET NULL
)