SELECT CITY.Name 
FROM CITY, COUNTRY 
WHERE CITY.CountryCode = COUNTRY.Code 
  AND COUNTRY.Continent = 'Africa';
