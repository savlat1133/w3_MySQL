-- 17. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON UPDATE CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT.

-- Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

-- CREATE TABLE IF NOT EXISTS jobs ( 
-- JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
-- JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
-- MIN_SALARY decimal(6,0) DEFAULT 8000, 
-- MAX_SALARY decimal(6,0) DEFAULT NULL
-- )ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS employees(
	EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY,
	FIRST_NAME varchar(20) DEFAULT NULL,
	LAST_NAME varchar(25) NOT NULL,
	EMAIL varchar(25) NOT NULL,
	PHONE_NUMBER varchar(20) DEFAULT NULL,
	HIRE_DATE date NOT NULL,
	JOB_ID varchar(10) NOT NULL,
	SALARY decimal(8,2) DEFAULT NULL,
    COMMISSION_PCT decimal(2,2) DEFAULT NULL,
    MANAGER_ID decimal(6,0) DEFAULT NULL,
    DEPARTMENT_ID decimal(4,0) DEFAULT NULL,
    FOREIGN KEY(DEPARTMENT_ID) REFERENCES departments(DEPARTMENT_ID),
    FOREIGN KEY(JOB_ID) REFERENCES jobs(JOB_ID)
)
ENGINE=InnoDB;
