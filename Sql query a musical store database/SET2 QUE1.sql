SELECT  DISTINCT c.Email, c.FirstName, c.LastName, g.Name
FROM Customer c
JOIN Invoice i
ON c.CustomerId=i.CustomerId
JOIN InvoiceLine il
ON i.InvoiceId=il.InvoiceId
JOIN Track t
ON il.TrackId=t.TrackId
JOIN Genre g
ON t.GenreId=g.GenreId
WHERE g.Name='Rock'
ORDER BY 1




