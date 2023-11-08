CREATE TABLE Rides (
    id INT PRIMARY KEY,
    driver_id INT,
    passenger_id INT,
    start_location VARCHAR(255),
    end_location VARCHAR(255),
    distance DECIMAL(5,2),
    ride_time DECIMAL(5,2),
    fare DECIMAL(6,2)
);

-- set 3
INSERT INTO Rides (id, driver_id, passenger_id, start_location, end_location, distance, ride_time, fare) VALUES (1, 21, 34, 'xyz', 'abc', 2, 5, 50), (2, 11, 20, 'abc', 'qwe', 3, 8, 60), (3, 3, 12, 'prq', 'xyz', 5, 12, 90), (4, 3, 4, 'twv', 'mno', 1, 3, 20),(5, 8, 4, 'abc', 'mno', 7, 13, 100);

SELECT * FROM Rides ORDER BY fare DESC;

SELECT SUM(distance) AS total_distance, SUM(fare) AS total_fare FROM Rides;

SELECT AVG(ride_time) AS Avg_Ride_Time FROM Rides;

SELECT * FROM Rides WHERE start_location LIKE 'Downtown%' OR end_location LIKE 'Downtown%';

SELECT COUNT(driver_id) FROM Rides WHERE driver_id = 21;

UPDATE Rides SET fare = 120 WHERE id = 4;

SELECT driver_id, SUM(fare) AS total_fare FROM Rides GROUP BY driver_id;

DELETE FROM Rides WHERE id = 2;


-- set 4
SELECT MIN(fare) AS lowestFare, MAX(fare) AS highestFare FROM Rides;

SELECT driver_id, AVG(fare) AS avgFare, AVG(distance) AS avgDistance FROM Rides GROUP BY driver_id;

SELECT driver_id, COUNT(*) AS total_rides FROM Rides GROUP BY driver_id HAVING COUNT(*) > 5;

SELECT Drivers.name FROM Drivers INNER JOIN Rides ON Drivers.driver_id = Rides.driver_id ORDER BY Rides.fare DESC LIMIT 1;

SELECT driver_id, SUM(fare) AS total_earnings FROM Rides GROUP BY driver_id ORDER BY total_earnings DESC LIMIT 3;


SELECT * FROM Rides WHERE ride_date >= CURDATE() - INTERVAL 7 DAY AND ride_date <= CURDATE();

SELECT * FROM Rides WHERE end_location IS NULL;

SELECT id AS ride_id, fare / distance AS fare_per_mile FROM Rides ORDER BY fare_per_mile DESC;

SELECT Rides.id AS ride_id,Drivers.name AS driver_name, Passengers.name AS passenger_name FROM Rides JOIN Drivers ON Rides.driver_id = Drivers.driver_id JOIN Passengers ON Rides.passenger_id = Passengers.passenger_id;

ALTER TABLE Rides ADD tip DECIMAL(6, 2);
