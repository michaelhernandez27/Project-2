DROP DATABASE IF EXISTS deliverydb;
CREATE DATABASE deliverydb;

USE deliverydb;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT;
    name VARCHAR(30);
    inventory INT(200);
    PRIMARY KEY(id);
)
