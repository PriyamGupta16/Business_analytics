SELECT g.Name,  p.Name, count(g.name)
FROM Genre g
JOIN Track t
ON g.GenreId=t.GenreId
JOIN PlaylistTrack pt
ON pt.TrackId=t.TrackId
JOIN Playlist p
ON p.PlaylistId=pt.PlaylistId
WHERE p.PlaylistId=5
GROUP BY 1,2
ORDER BY 3 DESC