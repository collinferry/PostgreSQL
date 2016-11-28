SELECT CONCAT(firstname, ' ', surname) AS member, name AS facility,
	CASE WHEN cd.members.memid = 0 THEN (guestcost*slots)
		 ELSE (membercost * slots)
	END AS cost
	FROM cd.members
	JOIN cd.bookings ON cd.bookings.memid = cd.members.memid
	JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
	WHERE starttime::date = DATE('2012-09-14')
	AND ((cd.members.memid = 0 AND (guestcost*slots) > 30)
	OR (cd.members.memid != 0 AND (membercost*slots) > 30))
	ORDER BY cost DESC;
