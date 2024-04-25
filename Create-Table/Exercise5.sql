-- 5. Write a MySQL query to create a table countries set a constraint NULL.

CREATE TABLE IF NOT EXISTS countries(
country_id varchar(2) NOT NULL,
country_name varchar(40) NOT NULL,
region_id decimal(10,0) NOT NULL
);
