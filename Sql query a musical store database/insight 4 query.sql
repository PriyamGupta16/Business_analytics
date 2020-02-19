SELECT count(g.Name) , i.BillingCountry,
CASE WHEN count(g.Name)> 100 THEN 'good choice'
     WHEN count(g.Name)>30 THEN  'doable'
	 ELSE 'poorchoice' END categorising_country_for_rock_concerts
FROM Genre g
JOIN Track t
ON g.GenreId=t.GenreId
JOIN InvoiceLine il
ON t.TrackId=il.TrackId
JOIN Invoice i
ON i.InvoiceId=il.InvoiceId
WHERE g.Name='Rock'
GROUP BY 2
ORDER BY 1 DESC
