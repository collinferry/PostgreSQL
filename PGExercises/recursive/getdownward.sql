WITH RECURSIVE temptable(recommended) AS (
  	SELECT memid FROM cd.members
	WHERE recommendedby = 1
  	UNION ALL
  	SELECT memid FROM temptable
  		JOIN cd.members mems ON temptable.recommended = mems.recommendedby
  	)
SELECT recommended, mems.firstname, mems.surname FROM temptable
	JOIN cd.members mems ON temptable.recommended = mems.memid
	ORDER BY mems.memid;

-- https://www.pgexercises.com/questions/recursive/getdownward.html
