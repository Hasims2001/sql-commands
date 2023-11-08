CREATE TABLE Customers(
  id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  address VARCHAR(255),
  phone_number VARCHAR(12)
);
 
INSERT INTO Customers (id, name, email, address, phone_number) VALUES (1,'alx', 'alx@gmail.com', '123, street', '1234567890'), (2, 'roy', 'roy@gmail.com', '123, street', '212164654'),  (3, 'zoya', 'zoya@gmail.com', '123, street', '3241645123'), (4,'abhishek', 'abhishek@gmail.com', '123, street', '5679856456'), (5,'saurabh', 'saurabh@gmail.com', '123, street', '47894546545'); 

SELECT * FROM Customers;

SELECT name, email FROM Customers;

SELECT * FROM Customers WHERE id = 3;

SELECT * FROM Customers WHERE name LIKE 'A%';

SELECT * FROM Customers ORDER BY name DESC;

UPDATE Customers SET address="adding new address" WHERE id = 4;

SELECT * FROM Customers LIMIT 3;

DELETE FROM Customers WHERE id = 2;

SELECT COUNT(*) FROM Customers;

SELECT * FROM Customers ORDER BY id ASC OFFSET 2;

SELECT * FROM Customers WHERE id > 2 AND name LIKE 'B%';

SELECT * FROM Customers WHERE ID < 3 OR name LIKE '%s';

SELECT * FROM Customers WHERE phone_number IS NULL;