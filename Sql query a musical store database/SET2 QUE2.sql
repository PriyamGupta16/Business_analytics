SELECT  a.ArtistId, a.Name,  count(g.Name)
FROM Artist a
JOIN Album al
ON a.ArtistId=al.ArtistId
JOIN Track t
ON al.AlbumId=t.AlbumId
JOIN Genre g
ON t.GenreId=g.GenreId
WHERE g.Name='Rock'
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10




