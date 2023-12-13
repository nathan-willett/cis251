use cis251;
SELECT EMPLID, ADDRESS1, ADDRESS2, CITY, COUNTY,
    CASE State
        WHEN 'WA' THEN 'WASHINGTON'
        WHEN 'ID' THEN 'IDAHO'
        WHEN 'TX' THEN 'TEXAS'
        WHEN 'FL' THEN 'FLORIDA'
        ELSE State
    END AS State,
    POSTAL
FROM Addresses;