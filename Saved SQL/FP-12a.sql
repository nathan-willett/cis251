use cis251;
SELECT DISTINCT E_ADDR_TYPE, COUNT(*) AS data_type
FROM emailaddresses
GROUP BY E_ADDR_TYPE