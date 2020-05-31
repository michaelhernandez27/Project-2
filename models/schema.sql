DROP DATABASE IF EXISTS d178nuig60dsd9b6;
CREATE DATABASE d178nuig60dsd9b6;

USE d178nuig60dsd9b6;
CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    price DECIMAL(10,2),
    inventory INT(200),
    rating INT(5),
    PRIMARY KEY(id)
);

USE d178nuig60dsd9b6;
INSERT INTO products (name, price, inventory, rating) VALUE ("Computer monitor", 199.99, 13, 3);
INSERT INTO products (name, price, inventory, rating) VALUE ("Toilet paper (6 rolls)", 11.95, 145, 1);
INSERT INTO products (name, price, inventory, rating) VALUE ("Coffee mug", 4.99, 67, 4);
INSERT INTO products (name, price, inventory, rating) VALUE ("Key chain", 3.50, 189, 3);
INSERT INTO products (name, price, inventory, rating) VALUE ("Headphones", 35.95, 19, 3);
INSERT INTO products (name, price, inventory, rating) VALUE ("Educational Book", 13.00, 46, 5);
INSERT INTO products (name, price, inventory, rating) VALUE ("Computer mouse", 29.99, 38, 2);
INSERT INTO products (name, price, inventory, rating) VALUE ("Unusually expensive laptop", 1700.99, 24, 4);
INSERT INTO products (name, price, inventory, rating) VALUE ("Note pad", 2.50, 116, 4);

DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
