-- 11. Write a MySQL query to create a table named countries including columns country_id, country_name and region_id and make sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion

CREATE TABLE IF NOT EXISTS countries(
country_id integer NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
country_name varchar(40) NOT NULL,
region_id decimal(10,0) NOT NULL
);
