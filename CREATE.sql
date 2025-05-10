-- Let's create a database
CREATE DATABASE AirlineDB;
GO

-- Database to be used
USE AirlineDB;
GO

-- 1. Airlines
CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Country NVARCHAR(100),
    FoundedYear INT,
    IATA_Code CHAR(2) UNIQUE,
    ICAO_Code CHAR(3),
    Headquarters NVARCHAR(150),
    Website NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Status NVARCHAR(20) DEFAULT 'Active'
);

-- 2. Airports
CREATE TABLE Airports (
    AirportID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    City NVARCHAR(100),
    Country NVARCHAR(100),
    IATA_Code CHAR(3) UNIQUE,
    ICAO_Code CHAR(4),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6),
    TimeZone NVARCHAR(50),
    IsInternational BIT
);

-- 3. Aircrafts
CREATE TABLE Aircrafts (
    AircraftID INT PRIMARY KEY IDENTITY(1,1),
    Model NVARCHAR(100),
    Capacity INT,
    AirlineID INT,
    RegistrationNumber NVARCHAR(20) UNIQUE,
    ManufactureYear INT,
    Status NVARCHAR(20) DEFAULT 'Active',
    EngineType NVARCHAR(50),
    RangeKM INT,
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);

-- 4. Flights
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY IDENTITY(1,1),
    FlightNumber NVARCHAR(20),
    AircraftID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    DurationMinutes INT,
    Status NVARCHAR(20) DEFAULT 'Scheduled',
    Price DECIMAL(10,2),
    DistanceKM INT,
    FOREIGN KEY (AircraftID) REFERENCES Aircrafts(AircraftID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID)
);

-- 5. Passengers
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Gender NVARCHAR(10),
    Nationality NVARCHAR(50),
    PassportNumber NVARCHAR(20) UNIQUE,
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    FrequentFlyerNumber NVARCHAR(30),
    EmergencyContact NVARCHAR(100)
);

-- 6. Bookings
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY IDENTITY(1,1),
    PassengerID INT,
    FlightID INT,
    BookingDate DATETIME DEFAULT GETDATE(),
    SeatNumber NVARCHAR(10),
    BookingStatus NVARCHAR(20) DEFAULT 'Confirmed',
    PaymentAmount DECIMAL(10,2),
    PaymentMethod NVARCHAR(20),
    CheckInStatus BIT DEFAULT 0,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- 7. CrewMembers
CREATE TABLE CrewMembers (
    CrewID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100),
    Gender NVARCHAR(10),
    Role NVARCHAR(50),
    Nationality NVARCHAR(50),
    AirlineID INT,
    HireDate DATE,
    LicenseNumber NVARCHAR(50),
    PhoneNumber NVARCHAR(20),
    Email NVARCHAR(100),
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);

-- 8. FlightCrews (many-to-many relationship)
CREATE TABLE FlightCrews (
    FlightID INT,
    CrewID INT,
    AssignedRole NVARCHAR(50),
    AssignedDate DATETIME,
    PRIMARY KEY (FlightID, CrewID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (CrewID) REFERENCES CrewMembers(CrewID)
);
