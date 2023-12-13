use salesordersexample;
SELECT c.CustFirstName as FirstName, c.CustLastName as LastName, c.CustStreetAddress as StreetAddress, 
	c.CustCity as City, c.CustZipCode as ZipCode
FROM Customers c
WHERE c.CustCity = 'Seattle'
UNION ALL
SELECT e.EmpFirstName, e.EmpLastName, e.EmpStreetAddress, e.EmpCity, e.EmpZipCode
FROM Employees e
ORDER BY ZipCode