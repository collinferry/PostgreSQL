SELECT DISTINCT recs.firstname, recs.surname FROM cd.members
	JOIN cd.members recs ON recs.memid = members.recommendedby
	ORDER BY surname;
	
