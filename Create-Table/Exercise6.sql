-- 6. Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000.

CREATE TABLE IF NOT EXISTS jobs(
job_id varchar(10) NOT NULL,
job_title varchar(35) NOT NULL,
min_salary decimal(6,0),
max_salary decimal(6,0),
CHECK(max_salary <= 25000)
);
