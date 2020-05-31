DROP DATABASE IF EXISTS deliverydb;
CREATE DATABASE deliverydb;

USE deliverydb;
CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    price DECIMAL(10,2),
    inventory INT(200),
    rating INT(5),
    PRIMARY KEY(id)
);

USE deliverydb;
INSERT INTO products (name, price, inventory, rating) VALUE ("Computer monitor", 199.99, 13, 3);
INSERT INTO products (name, price, inventory, rating) VALUE ("Toilet paper (6 rolls)", 11.95, 145, 1);
INSERT INTO products (name, price, inventory, rating) VALUE ("Coffee mug", 4.99, 67, 4);
INSERT INTO products (name, price, inventory, rating) VALUE ("Key chain", 3.50, 189, 3);

DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
