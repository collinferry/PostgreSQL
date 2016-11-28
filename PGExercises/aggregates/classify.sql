SELECT name, CASE WHEN class=1 THEN 'high'
				  WHEN class=2 THEN 'average'
				  ELSE 'low' END revenue
FROM(
  SELECT facs.name AS name,
	   NTILE(3)OVER(ORDER BY SUM(CASE WHEN (books.memid > 0) THEN (books.slots * facs.membercost)
									   ELSE (books.slots * facs.guestcost) END) DESC) AS class
  FROM cd.facilities facs
  JOIN cd.bookings books ON books.facid = facs.facid
  GROUP BY facs.name) AS sub
ORDER BY class, name;


-- https://www.pgexercises.com/questions/aggregates/classify.html
