--QUESTION 1

SELECT * 
FROM vehicles 
FULL JOIN owners 
ON vehicles.owner_id = owners.id;

--QUESTION 2

SELECT owners.first_name, owners.last_name, COUNT(vehicles.id)
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
ORDER BY owners.first_name ASC;

--QUESTION 3

SELECT owners.first_name, owners.last_name, ROUND(AVG(vehicles.price)) AS average_price, COUNT(vehicles.id)
FROM owners
join vehicles ON owners.id = vehicles.owner_id
GROUP BY owners,first_name, owners.last_name
HAVING AVH(vehicles.price) > 10000
ORDER BY owners.first_name DESC;
