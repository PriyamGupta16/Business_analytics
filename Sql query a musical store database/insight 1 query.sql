SELECT  
t.Composer || '-----' || ar.Name AS "pairs",count(t.Composer || '' || ar.Name)
FROM Artist ar
JOIN Album al
ON ar.ArtistId=al.ArtistId
JOIN Track t
ON al.AlbumId=t.AlbumId
GROUP BY t.Composer || '' || ar.Name
ORDER BY 2 DESC