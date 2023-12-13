use cis251;
SELECT DISTINCT departmenttable.DEPTID, DESCR
FROM departmenttable
INNER JOIN job ON departmenttable.DEPTID = job.DEPTID
WHERE job.HR_STATUS = 'A'