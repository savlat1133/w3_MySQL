-- 9. Write a MySQL query to create a table named countries including columns country_id,country_name and region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion.

CREATE TABLE if NOT EXISTS countries(
country_id varchar(2) NOT NULL,
country_name varchar(40) NOT NULL,
region_id decimal(10,0) NOT NULL,
UNIQUE(country_id)
};
