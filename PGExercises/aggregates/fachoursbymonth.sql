SELECT facid, SUM(slots) as Total_Slots
	FROM cd.bookings
	WHERE starttime::date >= DATE('09-01-2012')
	AND starttime::date <= DATE('09-30-2012')
	GROUP BY facid
	ORDER BY SUM(slots);

  -- https://www.pgexercises.com/questions/aggregates/fachoursbymonth.html
