-- 16. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments table and another foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables.

-- "A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table." - Reference dev.mysql.com

-- Assume that the structure of two tables departments and jobs.

-- +-----------------+--------------+------+-----+---------+-------+
-- | Field           | Type         | Null | Key | Default | Extra |
-- +-----------------+--------------+------+-----+---------+-------+
-- | DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
-- | DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
-- | MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |

-- | LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
-- +-----------------+--------------+------+-----+---------+-------+


-- +------------+--------------+------+-----+---------+-------+
-- | Field      | Type         | Null | Key | Default | Extra |
-- +------------+--------------+------+-----+---------+-------+
-- | JOB_ID     | varchar(10)  | NO   | PRI |         |       |
-- | JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
-- | MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
-- | MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
-- +------------+--------------+------+-----+---------+------


CREATE TABLE IF NOT EXISTS jobs(
job_id varchar(10) NOT NULL PRIMARY KEY,
job_title varchar(35) NOT NULL,
min_salary decimal(6,0) DEFAULT NULL,
max_salary decimal(6,0) DEFAULT NULL
)
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS departments(
department_id decimal(4,0) NOT NULL PRIMARY KEY,
department_name varchar(30) NOT NULL,
manager_id decimal(6,0) DEFAULT NULL,
location_id decimal(4,0) DEFAULT NULL
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
commission decimal(2,2) DEFAULT NULL,
manager_id decimal(6,0) DEFAULT NULL,
department_id decimal(4,0) DEFAULT NULL,
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (job_id) REFERENCES jobs(job_id)
)
ENGINE=InnoDB;
