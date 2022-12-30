-- 3. Finding users who have never posted a photo

SELECT 
    users.id, users.username
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.id IS NULL;