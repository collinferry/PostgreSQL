SELECT facid, EXTRACT(MONTH FROM starttime) AS month, SUM(slots) FROM cd.bookings
	WHERE starttime >= DATE('01-01-2012')
	AND starttime <= DATE('12-31-2012')
	GROUP BY facid, month
UNION ALL SELECT facid, null, SUM(slots) FROM cd.bookings
	WHERE starttime >= DATE('01-01-2012')
	AND starttime <= DATE('12-31-2012')
	GROUP BY facid
UNION ALL SELECT null, null, SUM(slots) FROM cd.bookings
	WHERE starttime >= DATE('01-01-2012')
	AND starttime <= DATE('12-31-2012')
ORDER BY facid, month;

-- https://www.pgexercises.com/questions/aggregates/fachoursbymonth3.html
