use cis251;
SELECT names.EMPLID, FULLNAME, job.JOBCODE, jobcodetable.DESCR, POSITION_NBR, SUPERVISOR_ID
FROM names
	JOIN job
		ON names.EMPLID = job.EMPLID
	JOIN jobcodetable
		ON job.JOBCODE = jobcodetable.JOBCODE
WHERE job.JOB_INDICATOR = 'P';