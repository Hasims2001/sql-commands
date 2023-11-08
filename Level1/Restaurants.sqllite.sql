CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine_type VARCHAR(100),
    location VARCHAR(255),
    average_rating DECIMAL(3, 2),
    delivery_available BOOLEAN
);

INSERT INTO Restaurants (id, name, cuisine_type, location, average_rating, delivery_available) VALUES (1, 'italian pasta', 'italian', 'italy', 4.2, true), (2, 'dosa', 'indian', 'india', 4.8, true),(3, 'cheese pizza', 'italian', 'italy', 4.5, true), (4, 'chicken burger', 'usa', 'usa', 4.7, true), (5, 'idliy', 'indian', 'india', 4.9, false);

SELECT * FROM Restaurants ORDER BY average_rating DESC;

SELECT * FROM Restaurants WHERE delivery_available = TRUE AND average_rating > 4;

SELECT * FROM Restaurants WHERE cuisine_type IS NULL;

SELECT COUNT(*) FROM Restaurants WHERE delivery_available = TRUE;

SELECT * FROM Restaurants WHERE location LIKE 'New York';

SELECT AVG(average_rating) FROM Restaurants;

SELECT * FROM Restaurants ORDER BY average_rating DESC LIMIT 5;

DELETE FROM Restaurants WHERE id = 3;