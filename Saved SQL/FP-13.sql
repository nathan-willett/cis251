use cis251;
SELECT job.*
FROM job
LEFT JOIN positiondata ON job.POSITION_NBR = positiondata.POSITION_NBR
WHERE positiondata.POSITION_NBR IS NULL;