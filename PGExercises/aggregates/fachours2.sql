SELECT facid, sum(slots) FROM cd.bookings
	GROUP BY facid
	ORDER BY sum DESC
	LIMIT 1;

  -- https://www.pgexercises.com/questions/aggregates/fachours2.html
