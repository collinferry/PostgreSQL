WITH RECURSIVE recommenders(recommender) AS (
  	SELECT recommendedby from cd.members WHERE memid = 27
  	UNION ALL
  	SELECT cd.members.recommendedby FROM recommenders
  		INNER JOIN cd.members ON cd.members.memid = recommenders.recommender
  	)
SELECT recommenders.recommender, cd.members.firstname, cd.members.surname
	FROM recommenders
	INNER JOIN cd.members ON recommenders.recommender = cd.members.memid
ORDER BY memid DESC;

-- https://www.pgexercises.com/questions/recursive/getupward.html
