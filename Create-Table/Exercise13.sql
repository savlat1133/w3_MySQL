-- 13. Write a MySQL query to create a table countries including columns country_id, country_name and region_id and make sure that the combination of columns country_id and region_id will be unique.

CREATE TABLE IF NOT EXISTS countries(
country_id varchar(2) NOT NULL UNIQUE DEFAULT ' ',
country_name varchar(40) DEFAULT NULL,
region_id decimal(10,0) NOT NULL,
PRIMARY KEY(country_id, region_id)
);
