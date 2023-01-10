-- 7. Find users who have liked every single photo on the site

SELECT 
    users.id, users.username, COUNT(*) AS liked_photos
FROM
    users
        JOIN
    likes ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING liked_photos = (SELECT 
        COUNT(*)
    FROM
        photos)
ORDER BY users.id;