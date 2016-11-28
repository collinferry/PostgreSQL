SELECT surname, firstname, members.memid, MIN(starttime) AS starttime FROM cd.members members
	JOIN cd.bookings books ON books.memid = members.memid
	WHERE starttime >= '09-01-2012'
	GROUP BY surname, firstname, members.memid
	ORDER BY members.memid;

  -- https://www.pgexercises.com/questions/aggregates/nbooking.html
