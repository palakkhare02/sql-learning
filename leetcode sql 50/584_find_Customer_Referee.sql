-- Problem: Customers Who Were Not Referred by Customer with ID = 2
-- Platform: LeetCode
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customers-who-were-not-referred-by-customer-with-id-2/

-- Approach:
-- 1. Select customers whose referee_id is NOT equal to 2
-- 2. Also include customers who were not referred by anyone (referee_id IS NULL)
-- 3. Use OR condition to combine both cases

SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL;
