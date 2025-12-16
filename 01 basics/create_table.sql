-- Create users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/*
==================== CONCEPTS EXPLAINED ====================

1. PRIMARY KEY
   - Uniquely identifies each record in a table.
   - Cannot contain NULL values.

   Example:
   id = 1, 2, 3 (each row has a unique id)

2. AUTO_INCREMENT
   - Automatically increases the value for each new row.
   - Used mainly with PRIMARY KEY.

   Example:
   First row  -> id = 1
   Second row -> id = 2

3. NOT NULL
   - Column must have a value.
   - NULL values are not allowed.

   Example:
   name = 'Rahul' ✔
   name = NULL   ❌

4. UNIQUE
   - Ensures all values in a column are different.

   Example:
   email = rahul@gmail.com ✔
   email = rahul@gmail.com ❌ (duplicate)

5. ENUM
   - Restricts column values to a fixed set of values.

   Example:
   gender = 'Male' ✔
   gender = 'Unknown' ❌

6. DEFAULT
   - Assigns a default value if no value is provided.

   Example:
   created_at = CURRENT_TIMESTAMP (auto-filled)
===========================================================
*/
