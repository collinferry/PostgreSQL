SELECT facid, SUM(slots) as "Total Slots" FROM cd.bookings
	GROUP BY facid
	HAVING SUM(slots) > 1000
	ORDER BY facid;

-- https://www.pgexercises.com/questions/aggregates/fachours1a.html
