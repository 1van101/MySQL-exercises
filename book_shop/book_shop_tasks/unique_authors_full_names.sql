-- get only uniqie authors

SELECT DISTINCT
    CONCAT_WS(' ', author_fname, author_lname) AS 'unique authors full name'
FROM
    books;