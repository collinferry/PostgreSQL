SELECT facid, SUM(slots) as Total_Slots
	FROM cd.bookings
	GROUP BY facid
	ORDER BY facid;

  --https://www.pgexercises.com/questions/aggregates/fachours.html
