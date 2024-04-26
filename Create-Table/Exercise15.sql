-- 15. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.

-- Assume the structure of departments table below.

-- +-----------------+--------------+------+-----+---------+-------+
-- | Field           | Type         | Null | Key | Default | Extra |
-- +-----------------+--------------+------+-----+---------+-------+
-- | DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
-- | DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
-- | MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |
-- | LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
-- +-----------------+--------------+------+-----+---------+-------+

CREATE TABLE IF NOT EXISTS departments(
department_id decimal(4,0) NOT NULL,
department_name varchar(30) NOT NULL,
manager_id decimal(6,0) NOT NULL,
location_id decimal(4,0) DEFAULT NULL,
PRIMARY KEY(department_id, manager_id)
)
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS employees(
employee_id decimal(6,0) NOT NULL PRIMARY KEY,
first_name varchar(20) DEFAULT NULL,
last_name varchar(25) NOT NULL,
email varchar(25) NOT NULL,
phone_number varchar(20) DEFAULT NULL,
hire_date date NOT NULL,
job_id varchar(10) NOT NULL,
salary decimal(8,2) DEFAULT NULL,
commission_pct decimal(2,2) DEFAULT NULL,
manager_id decimal(6,0) DEFAULT NULL,
deparment_id decimal(4,0) DEFAULT NULL,
FOREIGN KEY(deparment_id, manager_id) REFERENCES departments(department_id, manager_id)
)
ENGINE=InnoDB;
