-- Problem: Managers with at Least 5 Direct Reports
-- Platform: LeetCode
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

-- Approach:
-- 1. Join Employee table with itself (manager and employee)
-- 2. Group by manager
-- 3. Count direct reports and filter count >= 5

SELECT e1.name
FROM Employee e1
JOIN Employee e2
  ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.id) >= 5;
