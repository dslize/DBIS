SELECT DISTINCT name, title, location, filename, pictures.timestamp, COUNT(commentID) AS commentcount
FROM (pictures NATURAL JOIN users) LEFT JOIN comments ON pictures.pictureID=comments.pictureID
WHERE current_timestamp - '1 day'::interval <= pictures.timestamp AND current_timestamp >= pictures.timestamp
GROUP BY name, title, location, filename, pictures.timestamp
ORDER BY pictures.timestamp DESC