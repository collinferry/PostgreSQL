SELECT facs.name AS name,
	 RANK()OVER(ORDER BY SUM(CASE WHEN (books.memid > 0) THEN (books.slots * facs.membercost)
								     ELSE (books.slots * facs.guestcost) END) DESC) AS rank
FROM cd.facilities facs
JOIN cd.bookings books ON books.facid = facs.facid
GROUP BY facs.name
LIMIT 3;

-- https://www.pgexercises.com/questions/aggregates/facrev3.html
