Go to Preview Page
https://tankadai.github.io/else/
SELECT * 
FROM Sailors 
WHERE Sname LIKE '%ry';
SELECT DISTINCT Reserves.Sid 
FROM Reserves 
JOIN Boats ON Reserves.Bid = Boats.Bid 
WHERE Boats.Color = 'Red';
SELECT * 
FROM Sailors 
WHERE Sname = 'Matt' OR Rating = 9;
