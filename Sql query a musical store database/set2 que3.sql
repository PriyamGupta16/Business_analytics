SELECT a.ArtistId, sum(il.UnitPrice),a.Name
FROM Artist a
JOIN ALBUM al
ON a.ArtistId=al.ArtistId
JOIN Track t
ON al.AlbumId=t.AlbumId
JOIN InvoiceLine il
ON il.TrackId=t.TrackId
JOIN Invoice i
ON il.InvoiceId=i.InvoiceId
GROUP BY 1,3
ORDER BY 2 DESC
