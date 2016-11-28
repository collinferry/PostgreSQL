SELECT book.facid, name, ROUND(SUM(slots / 2.0), 2) AS "Total Hours"
	FROM cd.bookings book
	JOIN cd.facilities fac ON fac.facid = book.facid
	GROUP BY book.facid, name
	ORDER BY facid;

  -- https://www.pgexercises.com/questions/aggregates/fachours3.html
