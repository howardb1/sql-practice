SELECT name, bonus
FROM Employee
LEFT JOIN Bonus 
ON Employee.empId = Bonus.empId 
WHERE COALESCE(bonus, 0) < 1000;