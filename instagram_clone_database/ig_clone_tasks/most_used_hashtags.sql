-- 6. Find 5 most commonly used hashtags

SELECT 
    tags.id AS tag_id, tags.tag_name, COUNT(*) AS total
FROM
    tags
        JOIN
    photo_tags ON photo_tags.tag_id = tags.id
GROUP BY tag_name
ORDER BY total DESC
LIMIT 5;