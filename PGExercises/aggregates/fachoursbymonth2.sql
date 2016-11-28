SELECT facid, EXTRACT (MONTH FROM starttime) AS month, SUM(slots) as Total_Slots
	FROM cd.bookings
	WHERE starttime::date >= Date('01-01-2012')
	AND starttime::date <= Date('12-31-2012')
	GROUP BY facid, month
	ORDER BY facid, month;

  -- https://www.pgexercises.com/questions/aggregates/fachoursbymonth2.html
