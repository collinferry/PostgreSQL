SELECT recommendedby, COUNT(recommendedby)
	FROM cd.members
	WHERE recommendedby > 0
	GROUP BY recommendedby
	ORDER BY recommendedby;

-- https://www.pgexercises.com/questions/aggregates/count3.html
