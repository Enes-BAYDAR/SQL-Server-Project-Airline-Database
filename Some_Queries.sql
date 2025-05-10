--1. Busiest Airlines (by Number of Flights)

SELECT a.Name AS AirlineName, COUNT(f.FlightID) AS FlightCount
FROM Airlines a
JOIN Aircrafts ac ON a.AirlineID = ac.AirlineID
JOIN Flights f ON ac.AircraftID = f.AircraftID
GROUP BY a.Name
ORDER BY FlightCount DESC;

--2. Top 5 Longest Distance Flights

SELECT TOP 5 
    f.FlightNumber, 
    a1.Name AS DepartureAirport, 
    a2.Name AS ArrivalAirport, 
    f.DistanceKM, 
    CONCAT(f.DurationMinutes/60, ' saat ', f.DurationMinutes%60, ' dakika') AS Duration,
    ac.Model AS AircraftModel
FROM Flights f
JOIN Airports a1 ON f.DepartureAirportID = a1.AirportID
JOIN Airports a2 ON f.ArrivalAirportID = a2.AirportID
JOIN Aircrafts ac ON f.AircraftID = ac.AircraftID
ORDER BY f.DistanceKM DESC;

--3. Most Frequently Fly Passengers

SELECT TOP 10 
    p.FirstName + ' ' + p.LastName AS PassengerName,
    p.Nationality,
    COUNT(b.BookingID) AS TotalFlights,
    SUM(f.Price) AS TotalSpent
FROM Passengers p
JOIN Bookings b ON p.PassengerID = b.PassengerID
JOIN Flights f ON b.FlightID = f.FlightID
GROUP BY p.FirstName, p.LastName, p.Nationality
ORDER BY TotalFlights DESC, TotalSpent DESC;

--4. Most Profitable Flights

SELECT 
    f.FlightNumber,
    a1.Name AS Departure,
    a2.Name AS Arrival,
    COUNT(b.BookingID) AS PassengerCount,
    SUM(f.Price) AS TotalRevenue,
    al.Name AS Airline
FROM Flights f
JOIN Airports a1 ON f.DepartureAirportID = a1.AirportID
JOIN Airports a2 ON f.ArrivalAirportID = a2.AirportID
JOIN Bookings b ON f.FlightID = b.FlightID
JOIN Aircrafts ac ON f.AircraftID = ac.AircraftID
JOIN Airlines al ON ac.AirlineID = al.AirlineID
GROUP BY f.FlightNumber, a1.Name, a2.Name, al.Name
ORDER BY TotalRevenue DESC;

--5. Flight Distribution of Pilots

SELECT 
    cm.FullName AS PilotName,
    cm.Nationality,
    al.Name AS Airline,
    COUNT(fc.FlightID) AS FlightCount,
    SUM(f.DistanceKM) AS TotalDistanceFlown
FROM CrewMembers cm
JOIN FlightCrews fc ON cm.CrewID = fc.CrewID
JOIN Flights f ON fc.FlightID = f.FlightID
JOIN Aircrafts ac ON f.AircraftID = ac.AircraftID
JOIN Airlines al ON ac.AirlineID = al.AirlineID
WHERE cm.Role = 'Captain' OR cm.Role = 'First Officer'
GROUP BY cm.FullName, cm.Nationality, al.Name
ORDER BY FlightCount DESC;

--6. Most Popular Routes (by Number of Passengers)

SELECT TOP 10
    a1.City + ' (' + a1.IATA_Code + ')' AS DepartureCity,
    a2.City + ' (' + a2.IATA_Code + ')' AS ArrivalCity,
    COUNT(b.BookingID) AS PassengerCount,
    AVG(f.Price) AS AveragePrice
FROM Flights f
JOIN Airports a1 ON f.DepartureAirportID = a1.AirportID
JOIN Airports a2 ON f.ArrivalAirportID = a2.AirportID
JOIN Bookings b ON f.FlightID = b.FlightID
GROUP BY a1.City, a1.IATA_Code, a2.City, a2.IATA_Code
ORDER BY PassengerCount DESC;

--7. Occupancy Rates by Aircraft Models

SELECT 
    ac.Model,
    ac.Capacity,
    COUNT(b.BookingID) AS BookedSeats,
    CAST(COUNT(b.BookingID) AS FLOAT) / ac.Capacity * 100 AS OccupancyRate
FROM Aircrafts ac
JOIN Flights f ON ac.AircraftID = f.AircraftID
JOIN Bookings b ON f.FlightID = b.FlightID
GROUP BY ac.Model, ac.Capacity
ORDER BY OccupancyRate DESC;

--8. Passenger Distribution by Country

SELECT 
    p.Nationality,
    COUNT(DISTINCT p.PassengerID) AS PassengerCount,
    COUNT(b.BookingID) AS TotalBookings,
    AVG(f.Price) AS AverageTicketPrice
FROM Passengers p
JOIN Bookings b ON p.PassengerID = b.PassengerID
JOIN Flights f ON b.FlightID = f.FlightID
GROUP BY p.Nationality
ORDER BY PassengerCount DESC;

--9. The Hardest Working Cabin Crew

SELECT 
    cm.FullName,
    cm.Role,
    al.Name AS Airline,
    COUNT(fc.FlightID) AS FlightCount,
    SUM(f.DistanceKM) AS TotalDistance
FROM CrewMembers cm
JOIN FlightCrews fc ON cm.CrewID = fc.CrewID
JOIN Flights f ON fc.FlightID = f.FlightID
JOIN Aircrafts ac ON f.AircraftID = ac.AircraftID
JOIN Airlines al ON ac.AirlineID = al.AirlineID
WHERE cm.Role LIKE '%Cabin Crew%'
GROUP BY cm.FullName, cm.Role, al.Name
ORDER BY FlightCount DESC;

--10. Most Profitable Airlines

SELECT 
    al.Name AS Airline,
    COUNT(DISTINCT f.FlightID) AS FlightCount,
    COUNT(b.BookingID) AS BookingCount,
    SUM(f.Price) AS TotalRevenue,
    AVG(f.Price) AS AverageTicketPrice
FROM Airlines al
JOIN Aircrafts ac ON al.AirlineID = ac.AirlineID
JOIN Flights f ON ac.AircraftID = f.AircraftID
JOIN Bookings b ON f.FlightID = b.FlightID
GROUP BY al.Name
ORDER BY TotalRevenue DESC;