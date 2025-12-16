-- Select all columns
SELECT * FROM users;

-- Select specific columns
SELECT name, email FROM users;

-- Select users with salary greater than 30000
SELECT name, salary
FROM users
WHERE salary > 30000;

-- Select users ordered by salary (high to low)
SELECT name, salary
FROM users
ORDER BY salary DESC;

-- Select users born after 1998
SELECT name, date_of_birth
FROM users
WHERE date_of_birth > '1998-01-01';

-- Limit results
SELECT * FROM users
LIMIT 2;
