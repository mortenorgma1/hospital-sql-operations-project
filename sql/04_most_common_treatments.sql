/*
Counts how often each treatment is performed.
Used to identify high-volume procedures.
*/
SELECT
	TREATMENT_NAME,
	COUNT(*) AS TOTAL_TREATMENTS
FROM
	TREATMENTS
GROUP BY
	TREATMENT_NAME
ORDER BY
	TOTAL_TREATMENTS DESC