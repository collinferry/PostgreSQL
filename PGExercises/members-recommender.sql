SELECT DISTINCT CONCAT(mems.firstname, ' ', mems.surname) AS member,
	(SELECT CONCAT(recs.firstname, ' ', recs.surname) AS recommender
	 	FROM cd.members recs
	 	WHERE mems.recommendedby = recs.memid)
FROM cd.members mems
ORDER BY member;

-- https://www.pgexercises.com/questions/joins/sub.html
