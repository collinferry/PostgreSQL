SELECT mems.firstname, mems.surname, ROUND(SUM(books.slots / 2.0), -1) AS hours,
	 	RANK()OVER(ORDER BY ROUND(SUM(books.slots / 2.0), -1) DESC) AS rank
	 	FROM cd. members mems
	 	JOIN cd.bookings books ON mems.memid = books.memid
		GROUP BY mems.firstname, mems.surname
		ORDER BY rank, mems.surname, mems.firstname;

    -- https://www.pgexercises.com/questions/aggregates/rankmembers.html
