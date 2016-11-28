SELECT name, revenue FROM (
  SELECT FACS.name, SUM(CASE WHEN (BOOKS.memid > 0)
						THEN (FACS.membercost * BOOKS.slots)
						ELSE (FACS.guestcost * BOOKS.slots) END)
						AS revenue
  FROM cd.facilities FACS
	  JOIN cd.bookings BOOKS ON BOOKS.facid = FACS.facid
	  GROUP BY FACS.name) AS blank WHERE revenue < 1000
ORDER BY revenue

-- https://www.pgexercises.com/questions/aggregates/facrev2.html
