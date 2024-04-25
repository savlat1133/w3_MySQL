-- 8. Write a MySQL query to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.

CREATE TABLE IF NOT EXISTS job_history(
employee_id decimal(6,0) NOT NULL,
start_date date NOT NULL,
end_date date NOT NULL,
CHECK(end_date LIKE '--/--/----'),
job_id varchar(10) NOT NULL,
department_id decimal(4,0) NOT NULL
);
