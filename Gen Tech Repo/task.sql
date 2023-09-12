SELECT 
	Employees.LastName,
	Employees.FirstName,
	COUNT(*) as total_orders
FROM Orders
Join Employees on Employees.EmployeeID = Orders.EmployeeID
GROUP by Employees.EmployeeID
Order by total_orders DESC
limit 3;