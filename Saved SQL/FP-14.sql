use cis251;
SELECT FULLNAME, ADDRESS1, ADDRESS2, CITY, STATE, POSTAL
FROM names
	JOIN addresses USING (EMPLID)