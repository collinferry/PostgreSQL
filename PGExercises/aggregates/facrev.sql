SELECT cd.facilities.name, SUM(CASE WHEN(memid > 0)
						    THEN (cd.bookings.slots * cd.facilities.membercost)
						    ELSE (cd.bookings.slots * cd.facilities.guestcost) END)
							AS revenue
FROM cd.bookings
	JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
	GROUP BY cd.facilities.name
	ORDER BY revenue;

  -- https://www.pgexercises.com/questions/aggregates/facrev.html
