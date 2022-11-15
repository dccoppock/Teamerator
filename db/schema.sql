DROP DATABASE IF EXISTS team;
CREATE DATABASE team;
USE team;

-- * `department`
--     * `id`: `INT PRIMARY KEY`
--     * `name`: `VARCHAR(30)` to hold department name
CREATE TABLE department(
    id  
        INT 
        PRIMARY KEY
        NOT NULL
        AUTO_INCREMENT,
    name 
        VARCHAR(30)
        NOT NULL
        UNIQUE
);

-- * `role`
--     * `id`: `INT PRIMARY KEY`
--     * `title`: `VARCHAR(30)` to hold role title
--     * `salary`: `DECIMAL` to hold role salary
--     * `department_id`: `INT` to hold reference to department role belongs to
CREATE TABLE role(
    id  
        INT 
        PRIMARY KEY
        NOT NULL
        AUTO_INCREMENT,
    title 
        VARCHAR(30)
        NOT NULL
        UNIQUE,
    salary
        DECIMAL
        NOT NULL,
    department_id
        INT
        NOT NULL,
    FOREIGN KEY (department_id)
        REFERENCES department(id)
    ON DELETE CASCADE
);

-- * `employee`
--     * `id`: `INT PRIMARY KEY`
--     * `first_name`: `VARCHAR(30)` to hold employee first name
--     * `last_name`: `VARCHAR(30)` to hold employee last name
--     * `role_id`: `INT` to hold reference to employee role
--     * `manager_id`: `INT` to hold reference to another employee that is the manager of the current employee (`null` if the employee has no manager)
CREATE TABLE employee(
    id  
        INT 
        PRIMARY KEY
        NOT NULL
        AUTO_INCREMENT,
    first_name 
        VARCHAR(30)
        NOT NULL,
    last_name
        VARCHAR(30)
        NOT NULL,
    role_id
        INT
        PRIMARY KEY
        NOT NULL,
    manager_id
        INT,
    FOREIGN KEY (role_id)
        REFERENCES role(id)
        ON DELETE CASCADE,
    FOREIGN KEY (manager_id)
        REFERENCES employee(id)
        ON DELETE SET NULL
);
