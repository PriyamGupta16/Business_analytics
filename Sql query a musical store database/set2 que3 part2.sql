SELECT  a.Name,sum(il.UnitPrice)  ,c.CustomerId,c.FirstName,c.LastName
FROM Artist a
JOIN ALBUM al
ON a.ArtistId=al.ArtistId
JOIN Track t
ON al.AlbumId=t.AlbumId
JOIN InvoiceLine il
ON il.TrackId=t.TrackId
JOIN Invoice i
ON il.InvoiceId=i.InvoiceId
JOIN Customer c
ON c.CustomerId=i.CustomerId
WHERE a.ArtistId=90
GROUP BY 1,3,4,5
ORDER BY 2 DESC
