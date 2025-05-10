USE AirlineDB
GO

-- Airlines (20 records)
INSERT INTO Airlines (Name, Country, FoundedYear, IATA_Code, ICAO_Code, Headquarters, Website, PhoneNumber, Status)
VALUES
('Turkish Airlines', 'Turkey', 1933, 'TK', 'THY', 'Istanbul', 'www.turkishairlines.com', '+902123631212', 'Active'),
('Lufthansa', 'Germany', 1953, 'LH', 'DLH', 'Cologne', 'www.lufthansa.com', '+49692279913', 'Active'),
('Emirates', 'United Arab Emirates', 1985, 'EK', 'UAE', 'Dubai', 'www.emirates.com', '+97146005555', 'Active'),
('Qatar Airways', 'Qatar', 1993, 'QR', 'QTR', 'Doha', 'www.qatarairways.com', '+97440222000', 'Active'),
('Singapore Airlines', 'Singapore', 1972, 'SQ', 'SIA', 'Singapore', 'www.singaporeair.com', '+6562238888', 'Active'),
('British Airways', 'United Kingdom', 1974, 'BA', 'BAW', 'London', 'www.britishairways.com', '+44344800789', 'Active'),
('Air France', 'France', 1933, 'AF', 'AFR', 'Paris', 'www.airfrance.com', '+33157232323', 'Active'),
('Delta Air Lines', 'United States', 1928, 'DL', 'DAL', 'Atlanta', 'www.delta.com', '+18002212121', 'Active'),
('American Airlines', 'United States', 1930, 'AA', 'AAL', 'Fort Worth', 'www.aa.com', '+18004337300', 'Active'),
('Pegasus Airlines', 'Turkey', 1989, 'PC', 'PGT', 'Istanbul', 'www.flypgs.com', '+902123750000', 'Active'),
('AtlasGlobal', 'Turkey', 2001, 'KK', 'KKK', 'Istanbul', 'www.atlasglb.com', '+902123085000', 'Inactive'),
('Air Canada', 'Canada', 1937, 'AC', 'ACA', 'Montreal', 'www.aircanada.com', '+18882472262', 'Active'),
('Cathay Pacific', 'Hong Kong', 1946, 'CX', 'CPA', 'Hong Kong', 'www.cathaypacific.com', '+85227478888', 'Active'),
('Japan Airlines', 'Japan', 1951, 'JL', 'JAL', 'Tokyo', 'www.jal.co.jp', '+81354601111', 'Active'),
('Aeroflot', 'Russia', 1923, 'SU', 'AFL', 'Moscow', 'www.aeroflot.ru', '+74957555555', 'Active'),
('Korean Air', 'South Korea', 1962, 'KE', 'KAL', 'Seoul', 'www.koreanair.com', '+82226564114', 'Active'),
('Etihad Airways', 'United Arab Emirates', 2003, 'EY', 'ETD', 'Abu Dhabi', 'www.etihad.com', '+97125990000', 'Active'),
('Qantas', 'Australia', 1920, 'QF', 'QFA', 'Sydney', 'www.qantas.com', '+61296919691', 'Active'),
('Swiss International Air Lines', 'Switzerland', 2002, 'LX', 'SWR', 'Basel', 'www.swiss.com', '+4184848484', 'Active'),
('Finnair', 'Finland', 1923, 'AY', 'FIN', 'Helsinki', 'www.finnair.com', '+35896008111', 'Active');

-- Airports (20 records)
INSERT INTO Airports (Name, City, Country, IATA_Code, ICAO_Code, Latitude, Longitude, TimeZone, IsInternational)
VALUES
('Istanbul Airport', 'Istanbul', 'Turkey', 'IST', 'LTFM', 41.275278, 28.751944, 'UTC+3', 1),
('Heathrow Airport', 'London', 'United Kingdom', 'LHR', 'EGLL', 51.4775, -0.461389, 'UTC+0', 1),
('Charles de Gaulle Airport', 'Paris', 'France', 'CDG', 'LFPG', 49.009722, 2.547778, 'UTC+1', 1),
('Frankfurt Airport', 'Frankfurt', 'Germany', 'FRA', 'EDDF', 50.033333, 8.570556, 'UTC+1', 1),
('Dubai International Airport', 'Dubai', 'United Arab Emirates', 'DXB', 'OMDB', 25.252778, 55.364444, 'UTC+4', 1),
('John F. Kennedy International Airport', 'New York', 'United States', 'JFK', 'KJFK', 40.639722, -73.778889, 'UTC-5', 1),
('Los Angeles International Airport', 'Los Angeles', 'United States', 'LAX', 'KLAX', 33.9425, -118.408056, 'UTC-8', 1),
('Haneda Airport', 'Tokyo', 'Japan', 'HND', 'RJTT', 35.553333, 139.781111, 'UTC+9', 1),
('Changi Airport', 'Singapore', 'Singapore', 'SIN', 'WSSS', 1.359167, 103.989444, 'UTC+8', 1),
('Sabiha Gökçen International Airport', 'Istanbul', 'Turkey', 'SAW', 'LTFJ', 40.898553, 29.309219, 'UTC+3', 1),
('Atatürk Airport', 'Istanbul', 'Turkey', 'ISL', 'LTBA', 40.976111, 28.814167, 'UTC+3', 1),
('Esenboða Airport', 'Ankara', 'Turkey', 'ESB', 'LTAC', 40.128082, 32.995083, 'UTC+3', 1),
('Adnan Menderes Airport', 'Izmir', 'Turkey', 'ADB', 'LTBJ', 38.292392, 27.156953, 'UTC+3', 1),
('Schiphol Airport', 'Amsterdam', 'Netherlands', 'AMS', 'EHAM', 52.308056, 4.764167, 'UTC+1', 1),
('Incheon International Airport', 'Seoul', 'South Korea', 'ICN', 'RKSI', 37.469075, 126.450517, 'UTC+9', 1),
('Sydney Airport', 'Sydney', 'Australia', 'SYD', 'YSSY', -33.946111, 151.177222, 'UTC+10', 1),
('Toronto Pearson International Airport', 'Toronto', 'Canada', 'YYZ', 'CYYZ', 43.677223, -79.630556, 'UTC-5', 1),
('Sheremetyevo International Airport', 'Moscow', 'Russia', 'SVO', 'UUEE', 55.972642, 37.414589, 'UTC+3', 1),
('Beijing Capital International Airport', 'Beijing', 'China', 'PEK', 'ZBAA', 40.080111, 116.584556, 'UTC+8', 1),
('O''Hare International Airport', 'Chicago', 'United States', 'ORD', 'KORD', 41.978611, -87.904722, 'UTC-6', 1);

-- Aircrafts (20 records)
INSERT INTO Aircrafts (Model, Capacity, AirlineID, RegistrationNumber, ManufactureYear, Status, EngineType, RangeKM)
VALUES
('Boeing 737-800', 189, 1, 'TC-JGE', 2015, 'Active', 'Jet', 5765),
('Airbus A321', 220, 1, 'TC-JSU', 2018, 'Active', 'Jet', 7400),
('Boeing 777-300ER', 349, 1, 'TC-JJR', 2014, 'Active', 'Jet', 13650),
('Airbus A330-200', 250, 2, 'D-AIKF', 2013, 'Active', 'Jet', 12500),
('Boeing 747-8', 364, 2, 'D-ABYI', 2015, 'Active', 'Jet', 14815),
('Airbus A380-800', 517, 3, 'A6-EUN', 2014, 'Active', 'Jet', 15700),
('Boeing 787-9', 299, 4, 'A7-BHD', 2017, 'Active', 'Jet', 14140),
('Airbus A350-900', 325, 5, '9V-SMB', 2018, 'Active', 'Jet', 15000),
('Boeing 737 MAX 8', 178, 10, 'TC-NBA', 2019, 'Active', 'Jet', 6570),
('Airbus A320neo', 186, 10, 'TC-NBD', 2020, 'Active', 'Jet', 6500),
('Boeing 767-300ER', 214, 12, 'C-FMWJ', 2012, 'Active', 'Jet', 11370),
('Airbus A340-600', 320, 14, 'JA8991', 2006, 'Active', 'Jet', 13900),
('Boeing 777-200LR', 301, 15, 'VP-BGF', 2013, 'Active', 'Jet', 17445),
('Airbus A319-100', 124, 16, 'HL8281', 2011, 'Active', 'Jet', 6850),
('Boeing 737-900ER', 180, 19, 'HB-JZH', 2015, 'Active', 'Jet', 5925),
('Embraer 190', 100, 20, 'OH-LKL', 2014, 'Active', 'Jet', 4260),
('Bombardier CRJ900', 90, 12, 'C-FHJT', 2016, 'Active', 'Jet', 2870),
('Airbus A220-300', 145, 12, 'C-GJWT', 2019, 'Active', 'Jet', 5925),
('Boeing 737-700', 126, 10, 'TC-CPE', 2010, 'Maintenance', 'Jet', 6230),
('Airbus A310-300', 220, 1, 'TC-JCV', 1998, 'Retired', 'Jet', 8056);

-- Flights (20 records)
INSERT INTO Flights (FlightNumber, AircraftID, DepartureAirportID, ArrivalAirportID, DepartureTime, ArrivalTime, DurationMinutes, Status, Price, DistanceKM)
VALUES
('TK1953', 1, 1, 2, '2025-06-15 08:00:00', '2025-06-15 10:30:00', 150, 'Scheduled', 450.00, 2500),
('LH1234', 4, 4, 2, '2025-06-16 09:15:00', '2025-06-16 10:00:00', 45, 'Scheduled', 200.00, 500),
('EK012', 6, 5, 1, '2025-06-17 03:00:00', '2025-06-17 07:30:00', 270, 'Scheduled', 650.00, 3500),
('QR015', 7, 5, 4, '2025-06-18 14:30:00', '2025-06-18 18:45:00', 255, 'Scheduled', 550.00, 4000),
('SQ321', 8, 9, 5, '2025-06-19 23:00:00', '2025-06-20 06:30:00', 450, 'Scheduled', 1200.00, 7500),
('BA017', 5, 2, 6, '2025-06-20 11:00:00', '2025-06-20 14:30:00', 210, 'Scheduled', 800.00, 5500),
('AF139', 4, 3, 4, '2025-06-21 07:30:00', '2025-06-21 08:45:00', 75, 'Scheduled', 180.00, 450),
('DL401', 12, 6, 7, '2025-06-22 16:00:00', '2025-06-22 18:30:00', 150, 'Scheduled', 350.00, 4000),
('PC123', 9, 10, 11, '2025-06-23 10:00:00', '2025-06-23 11:15:00', 75, 'Scheduled', 120.00, 350),
('AC888', 11, 17, 12, '2025-06-24 13:00:00', '2025-06-24 20:30:00', 450, 'Scheduled', 950.00, 8000),
('CX289', 14, 15, 9, '2025-06-25 09:00:00', '2025-06-25 15:30:00', 390, 'Scheduled', 1100.00, 6000),
('JL711', 12, 8, 15, '2025-06-26 12:00:00', '2025-06-26 16:30:00', 270, 'Scheduled', 850.00, 4500),
('SU123', 13, 18, 4, '2025-06-27 14:00:00', '2025-06-27 16:30:00', 150, 'Scheduled', 400.00, 2200),
('KE082', 14, 15, 8, '2025-06-28 18:00:00', '2025-06-28 20:30:00', 150, 'Scheduled', 500.00, 1200),
('EY075', 17, 7, 5, '2025-06-29 22:00:00', '2025-06-30 08:30:00', 630, 'Scheduled', 1300.00, 12000),
('QF002', 18, 16, 9, '2025-07-01 10:00:00', '2025-07-01 17:30:00', 450, 'Scheduled', 1150.00, 7500),
('LX191', 15, 19, 4, '2025-07-02 08:00:00', '2025-07-02 10:00:00', 120, 'Scheduled', 300.00, 800),
('AY077', 16, 20, 19, '2025-07-03 12:00:00', '2025-07-03 15:30:00', 210, 'Scheduled', 400.00, 1800),
('TK1999', 2, 1, 5, '2025-07-04 04:00:00', '2025-07-04 08:30:00', 270, 'Scheduled', 700.00, 3500),
('PC456', 10, 10, 13, '2025-07-05 07:00:00', '2025-07-05 08:15:00', 75, 'Scheduled', 100.00, 350);

-- Passengers (20 records)
INSERT INTO Passengers (FirstName, LastName, DateOfBirth, Gender, Nationality, PassportNumber, Email, PhoneNumber, FrequentFlyerNumber, EmergencyContact)
VALUES
('Ahmet', 'Yýlmaz', '1985-05-15', 'Male', 'Turkish', 'U12345678', 'ahmet.yilmaz@example.com', '+905551234567', 'TK12345678', 'Ayþe Yýlmaz +905553334455'),
('Mehmet', 'Kaya', '1990-08-20', 'Male', 'Turkish', 'U23456789', 'mehmet.kaya@example.com', '+905552345678', 'TK23456789', 'Fatma Kaya +905554445566'),
('Ayþe', 'Demir', '1982-03-10', 'Female', 'Turkish', 'U34567890', 'ayse.demir@example.com', '+905553456789', 'TK34567890', 'Ali Demir +905555556677'),
('John', 'Smith', '1978-11-25', 'Male', 'American', 'P12345678', 'john.smith@example.com', '+12025551234', 'AA12345678', 'Jane Smith +12025554321'),
('Maria', 'Garcia', '1992-07-30', 'Female', 'Spanish', 'P23456789', 'maria.garcia@example.com', '+34911234567', 'IB23456789', 'Carlos Garcia +34911334455'),
('Li', 'Wei', '1988-09-12', 'Male', 'Chinese', 'P34567890', 'li.wei@example.com', '+8613812345678', 'CA34567890', 'Wang Fang +8613823456789'),
('Sophie', 'Martin', '1995-02-18', 'Female', 'French', 'P45678901', 'sophie.martin@example.com', '+33123456789', 'AF45678901', 'Pierre Martin +33198765432'),
('Hans', 'Müller', '1975-12-05', 'Male', 'German', 'P56789012', 'hans.muller@example.com', '+4915123456789', 'LH56789012', 'Anna Müller +4915234567890'),
('Emma', 'Johnson', '1980-04-22', 'Female', 'British', 'P67890123', 'emma.johnson@example.com', '+447912345678', 'BA67890123', 'James Johnson +447923456789'),
('Mohammed', 'Ali', '1993-06-08', 'Male', 'Emirati', 'P78901234', 'mohammed.ali@example.com', '+971501234567', 'EK78901234', 'Fatima Ali +971502345678'),
('Anna', 'Kowalska', '1987-01-15', 'Female', 'Polish', 'P89012345', 'anna.kowalska@example.com', '+48123456789', 'LO89012345', 'Piotr Kowalski +48234567890'),
('Ivan', 'Petrov', '1979-10-30', 'Male', 'Russian', 'P90123456', 'ivan.petrov@example.com', '+79123456789', 'SU90123456', 'Olga Petrova +79234567890'),
('Yuki', 'Tanaka', '1991-07-20', 'Female', 'Japanese', 'P01234567', 'yuki.tanaka@example.com', '+819012345678', 'JL01234567', 'Hiroshi Tanaka +819023456789'),
('Giovanni', 'Rossi', '1983-04-05', 'Male', 'Italian', 'P12345670', 'giovanni.rossi@example.com', '+393401234567', 'AZ12345670', 'Maria Rossi +393412345678'),
('Elena', 'Papadopoulos', '1994-08-12', 'Female', 'Greek', 'P23456701', 'elena.papadopoulos@example.com', '+306912345678', 'OA23456701', 'Dimitris Papadopoulos +306923456789'),
('David', 'Wilson', '1976-11-28', 'Male', 'Canadian', 'P34567012', 'david.wilson@example.com', '+14165551234', 'AC34567012', 'Sarah Wilson +14165552345'),
('Chen', 'Xiao', '1989-03-17', 'Female', 'Chinese', 'P45670123', 'chen.xiao@example.com', '+8613912345678', 'CA45670123', 'Li Wei +8613923456789'),
('Olivia', 'Brown', '1996-09-25', 'Female', 'Australian', 'P56701234', 'olivia.brown@example.com', '+61412345678', 'QF56701234', 'Noah Brown +61423456789'),
('Lars', 'Andersen', '1981-12-10', 'Male', 'Danish', 'P67012345', 'lars.andersen@example.com', '+4512345678', 'SK67012345', 'Mette Andersen +4523456789'),
('Fatima', 'Khan', '1997-05-18', 'Female', 'Pakistani', 'P70123456', 'fatima.khan@example.com', '+923001234567', 'PK70123456', 'Ali Khan +923012345678');

-- CrewMembers (20 records)
INSERT INTO CrewMembers (FullName, Gender, Role, Nationality, AirlineID, HireDate, LicenseNumber, PhoneNumber, Email)
VALUES
('Ali Demir', 'Male', 'Captain', 'Turkish', 1, '2010-05-15', 'TCKPT12345', '+905551112233', 'ali.demir@thy.com'),
('Ayþe Yýlmaz', 'Female', 'First Officer', 'Turkish', 1, '2015-08-20', 'TCFO67890', '+905552223344', 'ayse.yilmaz@thy.com'),
('Michael Johnson', 'Male', 'Captain', 'American', 8, '2008-03-10', 'USCPT54321', '+12025556677', 'michael.johnson@delta.com'),
('Sophie Martin', 'Female', 'Senior Cabin Crew', 'French', 7, '2012-07-15', 'FRSCC12345', '+33123456789', 'sophie.martin@airfrance.com'),
('Hans Schmidt', 'Male', 'Captain', 'German', 2, '2005-11-20', 'DECPT67890', '+491512345678', 'hans.schmidt@lufthansa.com'),
('Emma Wilson', 'Female', 'First Officer', 'British', 6, '2016-04-25', 'UKFO54321', '+447912345678', 'emma.wilson@ba.com'),
('Mehmet Kaya', 'Male', 'Senior Cabin Crew', 'Turkish', 1, '2018-09-30', 'TCSCC98765', '+905553334455', 'mehmet.kaya@thy.com'),
('Fatma Þahin', 'Female', 'Cabin Crew', 'Turkish', 1, '2020-02-15', 'TCCC12345', '+905554445566', 'fatma.sahin@thy.com'),
('David Brown', 'Male', 'Captain', 'American', 9, '2007-06-20', 'USCPT98765', '+12025557788', 'david.brown@aa.com'),
('Maria Garcia', 'Female', 'First Officer', 'Spanish', 3, '2014-10-05', 'ESFO54321', '+34911234567', 'maria.garcia@emirates.com'),
('Yusuf Khan', 'Male', 'Cabin Crew', 'Pakistani', 4, '2019-03-12', 'PKCC12345', '+923001234567', 'yusuf.khan@qatarairways.com'),
('Anna Kowalska', 'Female', 'Senior Cabin Crew', 'Polish', 5, '2017-07-25', 'PLSCC67890', '+48123456789', 'anna.kowalska@singaporeair.com'),
('Chen Wei', 'Male', 'Captain', 'Chinese', 14, '2011-12-10', 'CNCPT12345', '+8613812345678', 'chen.wei@jal.com'),
('Olga Petrova', 'Female', 'First Officer', 'Russian', 15, '2016-05-15', 'RUFO67890', '+79123456789', 'olga.petrova@aeroflot.com'),
('James Wilson', 'Male', 'Senior Cabin Crew', 'British', 6, '2018-08-20', 'UKSCC54321', '+447923456789', 'james.wilson@ba.com'),
('Yuki Tanaka', 'Female', 'Cabin Crew', 'Japanese', 14, '2021-01-05', 'JPCC12345', '+819012345678', 'yuki.tanaka@jal.com'),
('Giovanni Rossi', 'Male', 'Captain', 'Italian', 7, '2009-04-12', 'ITCPT67890', '+393401234567', 'giovanni.rossi@airfrance.com'),
('Elena Papadopoulos', 'Female', 'First Officer', 'Greek', 19, '2015-09-25', 'GRFO54321', '+306912345678', 'elena.papadopoulos@swiss.com'),
('Lars Andersen', 'Male', 'Senior Cabin Crew', 'Danish', 20, '2017-02-28', 'DKSCC12345', '+4512345678', 'lars.andersen@finnair.com'),
('Fatima Ali', 'Female', 'Cabin Crew', 'Emirati', 3, '2020-07-15', 'AECCC67890', '+971501234567', 'fatima.ali@emirates.com');

-- Bookings (20 records)
INSERT INTO Bookings (PassengerID, FlightID, BookingDate, SeatNumber, BookingStatus, PaymentAmount, PaymentMethod, CheckInStatus)
VALUES
(1, 1, '2025-05-10 14:30:00', '12A', 'Confirmed', 450.00, 'Credit Card', 0),
(2, 1, '2025-05-10 15:15:00', '12B', 'Confirmed', 450.00, 'Credit Card', 0),
(3, 2, '2025-05-11 10:20:00', '8C', 'Confirmed', 200.00, 'PayPal', 0),
(4, 3, '2025-05-12 09:45:00', '3D', 'Confirmed', 650.00, 'Credit Card', 0),
(5, 4, '2025-05-13 11:30:00', '15F', 'Confirmed', 550.00, 'Bank Transfer', 0),
(6, 5, '2025-05-14 16:20:00', '22A', 'Confirmed', 1200.00, 'Credit Card', 0),
(7, 6, '2025-05-15 14:10:00', '10B', 'Confirmed', 800.00, 'Credit Card', 0),
(8, 7, '2025-05-16 12:45:00', '5C', 'Confirmed', 180.00, 'PayPal', 0),
(9, 8, '2025-05-17 13:30:00', '18D', 'Confirmed', 350.00, 'Credit Card', 0),
(10, 9, '2025-05-18 10:15:00', '7A', 'Confirmed', 120.00, 'Credit Card', 0),
(11, 10, '2025-05-19 09:20:00', '12F', 'Confirmed', 950.00, 'Bank Transfer', 0),
(12, 11, '2025-05-20 11:45:00', '9B', 'Confirmed', 1100.00, 'Credit Card', 0),
(13, 12, '2025-05-21 14:30:00', '14C', 'Confirmed', 850.00, 'Credit Card', 0),
(14, 13, '2025-05-22 16:15:00', '6D', 'Confirmed', 400.00, 'PayPal', 0),
(15, 14, '2025-05-23 10:50:00', '11A', 'Confirmed', 500.00, 'Credit Card', 0),
(16, 15, '2025-05-24 12:30:00', '20F', 'Confirmed', 1300.00, 'Bank Transfer', 0),
(17, 16, '2025-05-25 15:45:00', '8B', 'Confirmed', 1150.00, 'Credit Card', 0),
(18, 17, '2025-05-26 09:10:00', '13C', 'Confirmed', 300.00, 'Credit Card', 0),
(19, 18, '2025-05-27 11:20:00', '4D', 'Confirmed', 400.00, 'PayPal', 0),
(20, 19, '2025-05-28 14:15:00', '16A', 'Confirmed', 700.00, 'Credit Card', 0);

-- FlightCrews (20 records)
INSERT INTO FlightCrews (FlightID, CrewID, AssignedRole, AssignedDate)
VALUES
(1, 1, 'Captain', '2025-05-01 10:00:00'),
(1, 2, 'First Officer', '2025-05-01 10:00:00'),
(1, 7, 'Senior Cabin Crew', '2025-05-01 10:00:00'),
(1, 8, 'Cabin Crew', '2025-05-01 10:00:00'),
(2, 5, 'Captain', '2025-05-02 11:00:00'),
(2, 12, 'Senior Cabin Crew', '2025-05-02 11:00:00'),
(3, 10, 'First Officer', '2025-05-03 12:00:00'),
(3, 20, 'Cabin Crew', '2025-05-03 12:00:00'),
(4, 11, 'Cabin Crew', '2025-05-04 13:00:00'),
(5, 13, 'Captain', '2025-05-05 14:00:00'),
(5, 16, 'Cabin Crew', '2025-05-05 14:00:00'),
(6, 6, 'First Officer', '2025-05-06 15:00:00'),
(6, 15, 'Senior Cabin Crew', '2025-05-06 15:00:00'),
(7, 4, 'Senior Cabin Crew', '2025-05-07 16:00:00'),
(8, 3, 'Captain', '2025-05-08 17:00:00'),
(9, 7, 'Senior Cabin Crew', '2025-05-09 18:00:00'),
(10, 9, 'Captain', '2025-05-10 19:00:00'),
(11, 14, 'First Officer', '2025-05-11 20:00:00'),
(12, 13, 'Captain', '2025-05-12 21:00:00'),
(13, 18, 'First Officer', '2025-05-13 22:00:00');