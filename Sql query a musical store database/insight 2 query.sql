SELECT e.EmployeeId, sum(i.total)
FROM Invoice i
JOIN Customer c
ON i.CustomerId=c.CustomerId
JOIN Employee e
ON e.EmployeeId=c.SupportRepId
GROUP BY 1