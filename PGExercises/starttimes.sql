SELECT starttime AS start, name FROM cd.bookings
	JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
	WHERE starttime::date = '2012-09-21'
	AND name LIKE 'Tennis%'
	ORDER BY starttime ASC;
