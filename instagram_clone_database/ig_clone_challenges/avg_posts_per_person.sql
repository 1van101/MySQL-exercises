-- 5. How many times does the average person post

SELECT 
    (ROUND((SELECT 
                    COUNT(*)
                FROM
                    photos) / (SELECT 
                    COUNT(*)
                FROM
                    users),
            1)) AS avg_posts_per_user;