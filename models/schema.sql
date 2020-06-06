DROP DATABASE IF EXISTS deliverydb;
CREATE DATABASE deliverydb;

USE deliverydb;
CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    image VARCHAR(30),
    price DECIMAL(10,2),
    inventory INT(200),
    rating INT(5),
    PRIMARY KEY(id)
);

USE	deliverydb;
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Computer monitor", "../images/monitor.png", 199.99, 13, 3);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Toilet paper (6 rolls)", "../images/tp.png", 11.95, 145, 1);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Coffee mug", "../images/mug.png", 4.99, 67, 4);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Key chain", "../images/keychain.webp", 3.50, 189, 3);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Headphones", "../images/headset.png", 35.95, 19, 3);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Educational Book", "../images/book.png", 13.00, 46, 5);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Computer mouse", "../images/mouse.png", 29.99, 38, 2);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Unusually expensive laptop", "../images/laptop.png", 1700.99, 24, 4);
INSERT INTO products (name, image, price, inventory, rating) VALUE ("Note pad", "../images/notepad.png", 2.50, 116, 4);

DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
