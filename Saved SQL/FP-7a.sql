USE cis251;
SELECT EMPLID
FROM names
WHERE EMPLID IN
	(SELECT EMPLID
    FROM job
    WHERE DEPTID = '98835')