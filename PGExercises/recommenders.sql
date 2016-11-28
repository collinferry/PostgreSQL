SELECT mems.firstname, mems.surname, recs.firstname AS recfname, recs.surname AS reclname
	FROM cd.members mems
	LEFT OUTER JOIN cd.members recs ON recs.memid = mems.recommendedby
	ORDER BY mems.surname, mems.firstname; 
