use cis251;
SELECT names.EMPLID, FIRST_NAME, LAST_NAME, EMAIL_ADDR, PREF_EMAIL_FLAG,
ADDRESS1, ADDRESS2, CITY, STATE, POSTAL, PHONE, PREF_PHONE_FLAG
FROM names
	JOIN addresses USING (EMPLID)
    JOIN emailaddresses USING (EMPLID)
    JOIN personalphone USING (EMPLID)
WHERE PREF_EMAIL_FLAG = 'Y' AND PREF_PHONE_FLAG = 'Y';