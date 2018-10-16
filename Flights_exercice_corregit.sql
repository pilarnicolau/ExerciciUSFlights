
SELECT count(*) From Flights;
SELECT* From Flights;

 SELECT AVG(ArrDelay), AVG(DepDelay), origin from Flights GROUP BY origin;
 
 SELECT origin, colYear, colMonth, AVG (ArrDelay) AS promedio
 FROM Flights
 GROUP BY colYear, colMonth, origin
 ORDER BY colYear, colMonth, origin;
 
 
 SELECT  AVG(ArrDelay) AS promedio,colMonth, colYear, City
 FROM Flights 
 INNER JOIN USAirports 
 ON Flights.Origin = USAirports.IATA 
 GROUP BY colMonth, colYear, City
 ORDER BY colMonth, colYear, City;
 
 SELECT  UniqueCarrier, COUNT(*)AS cancelledFlights FROM Flights WHERE  Cancelled > 0 GROUP BY UniqueCarrier ORDER BY cancelledFlights desc;
 
 SELECT TailNum, SUM(Distance) 
 From Flights
 WHERE TailNum!=NA
 GROUP BY TailNum, Distance ORDER BY Distance desc LIMIT 10;
 
 SELECT AVG(ArrDelay) AS Delay, Description FROM flights INNER JOIN carriers ON carriers.CarrierCode = flights.UniqueCarrier GROUP BY Description HAVING Delay >10 ORDER BY Delay;
 
 
 