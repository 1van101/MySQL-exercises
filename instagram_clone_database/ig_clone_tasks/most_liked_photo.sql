-- 4. Find the most liked photo and its owner

SELECT 
	username,
    photos.id AS photo_id,
    photos.image_url,
    COUNT(*) AS total_likes
FROM
    photos
        JOIN
    likes ON photos.id = likes.photo_id
		JOIN
	users ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total_likes DESC
LIMIT 1;