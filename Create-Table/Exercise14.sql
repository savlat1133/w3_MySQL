-- 14. Write a MySQL query to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

CREATE TABLE IF NOT EXISTS job_history(
employee_id decimal(6,0) NOT NULL PRIMARY KEY,
start_date date NOT NULL,
end_date date NOT NULL,
job_id varchar(10) NOT NULL,
department_id decimal(4,0) DEFAULT NULL,
FOREIGN KEY(job_id) REFERENCES jobs(job_id)
);
