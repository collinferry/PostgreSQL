SELECT FACS.name, FACS.initialoutlay /
	(SUM(CASE WHEN (BOOKS.memid > 0)
		      THEN (FACS.membercost * BOOKS.slots)
		      ELSE (FACS.guestcost * BOOKS.slots) END)/3
	- FACS.monthlymaintenance) AS months
	FROM cd.facilities FACS
JOIN cd.bookings BOOKS ON BOOKS.facid = FACS.facid
GROUP BY FACS.name, FACS.initialoutlay, FACS.monthlymaintenance
ORDER BY FACS.name;

-- https://www.pgexercises.com/questions/aggregates/payback.html
