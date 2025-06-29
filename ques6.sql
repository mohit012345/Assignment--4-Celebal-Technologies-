SELECT c.Name 
FROM CITY c, COUNTRY t 
WHERE c.CountryCode = t.Code 
  AND t.Continent = 'Africa';
