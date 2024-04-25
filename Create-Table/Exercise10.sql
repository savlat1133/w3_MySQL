-- 10. Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.

CREATE TABLE IF NOT EXISTS jobs(
job_id varchar(10) NOT NULL UNIQUE,
job_title varchar(35) NOT NULL DEFAULT ' ',
min_salary decimal(6,0) DEFAULT 8000,
max_salary decimal(6,0) DEFAULT NULL
);
