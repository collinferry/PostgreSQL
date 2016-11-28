SELECT DISTINCT CONCAT(cd.members.firstname, ' ', cd.members.surname) AS member, cd.facilities.name AS facility
	FROM cd.members
	JOIN cd.bookings ON cd.bookings.memid = cd.members.memid
	JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
	WHERE cd.facilities.name LIKE 'Tennis%'
	ORDER BY member;
