-- 2. What 3 days of the week do most users register on?

SELECT 
	DAYNAME(created_at) AS day_of_week,
    COUNT(*) AS total_registrations,
    RANK() OVER(ORDER BY COUNT(*) DESC) AS ranking
FROM users
GROUP BY day_of_week
LIMIT 3;