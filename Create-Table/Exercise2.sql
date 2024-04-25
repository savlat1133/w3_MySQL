-- 2. Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id which is already exists.

CREATE TABLE IF NOT EXISTS countries(
country_id varchar(2),
country_name varchar(40),
region_id decimal(10,0)
);
