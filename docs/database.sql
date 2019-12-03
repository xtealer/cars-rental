SHOW TABLES;
DESCRIBE customers;
DESCRIBE cotizations;
USE carsrental;

DELETE FROM cotizations;
DELETE FROM customers;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cotizations;

-- Customers table
CREATE TABLE customers (id VARCHAR(20) NOT NULL PRIMARY KEY, name VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL, birthdate VARCHAR(10) NOT NULL, email VARCHAR(30) NOT NULL,
cellphone VARCHAR(15) NOT NULL);

-- Cotizations table
CREATE TABLE cotizations (number INT PRIMARY KEY NOT NULL AUTO_INCREMENT, id VARCHAR(20) NOT NULL,
car_model VARCHAR(20) NOT NULL, delivery_date VARCHAR(10) NOT NULL, entry_date VARCHAR(10) NOT NULL,
FOREIGN KEY(id) REFERENCES customers(id));

SELECT * FROM customers;
SELECT * FROM cotizations;
INSERT IGNORE INTO customers
VALUES("1-222-333", "hum", "del", "1-2-2000", "mail@mail.net", "6543-5643");

INSERT INTO cotizations (id,car_model,delivery_date,entry_date)
VALUES("1-222-333","picanto","1-1-2019","1-1-2020");