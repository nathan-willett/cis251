USE cis251;
SELECT SUPERVISOR_ID, COUNT(EMPLID) AS EmployeeCount
FROM job
GROUP BY SUPERVISOR_ID;