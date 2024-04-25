-- 12. Write a MySQL query to create a table countries including columns country_id, country_name and region_id and make sure that the column country_id will be unique and store an auto incremented value.

CREATE TABLE IF NOT EXISTS countries(
country_id integer NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
country_name varchar(40) NOT NULL,
region_id decimal(10,0) NOT NULL
);
