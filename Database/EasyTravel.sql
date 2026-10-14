/* ============================================================
   EasyTravel - SQL Server database script
   Run in Visual Studio (SQL Server Object Explorer > New Query)
   or SSMS. Creates the database, all tables, and sample data.
   ============================================================ */

IF DB_ID('EasyTravelDb') IS NULL
    CREATE DATABASE EasyTravelDb;
GO
USE EasyTravelDb;
GO

/* ---------- 1. Users ---------- */
CREATE TABLE Users (
    UserId          INT IDENTITY(1,1) PRIMARY KEY,
    FullName        NVARCHAR(50)  NOT NULL,
    Email           NVARCHAR(100) NOT NULL UNIQUE,
    Phone           VARCHAR(15)   NULL,
    PasswordHash    CHAR(64)      NOT NULL,            -- SHA-256 hex
    DateOfBirth     DATE          NULL,
    City            NVARCHAR(80)  NULL,
    PassportNumber  VARCHAR(10)   NULL,
    PassportExpiry  DATE          NULL,
    Role            VARCHAR(10)   NOT NULL DEFAULT 'Customer'
                    CHECK (Role IN ('Customer','Admin')),
    CreatedAt       DATETIME      NOT NULL DEFAULT GETDATE()
);

/* ---------- 2. Destinations ---------- */
CREATE TABLE Destinations (
    DestinationId INT IDENTITY(1,1) PRIMARY KEY,
    Name          NVARCHAR(60)  NOT NULL,
    State         NVARCHAR(60)  NOT NULL,
    Tagline       NVARCHAR(100) NULL,
    Description   NVARCHAR(MAX) NULL,
    BestTime      NVARCHAR(30)  NULL,
    IdealStayDays NVARCHAR(20)  NULL,
    StartingPrice DECIMAL(10,2) NOT NULL DEFAULT 0,
    Rating        DECIMAL(2,1)  NULL CHECK (Rating BETWEEN 0 AND 5),
    ImagePath     NVARCHAR(200) NULL
);

/* ---------- 3. Hotels ---------- */
CREATE TABLE Hotels (
    HotelId       INT IDENTITY(1,1) PRIMARY KEY,
    DestinationId INT NULL FOREIGN KEY REFERENCES Destinations(DestinationId),
    Name          NVARCHAR(100) NOT NULL,
    City          NVARCHAR(60)  NOT NULL,
    Address       NVARCHAR(200) NULL,
    Description   NVARCHAR(MAX) NULL,
    Rating        DECIMAL(2,1)  NULL CHECK (Rating BETWEEN 0 AND 5),
    ReviewCount   INT           NOT NULL DEFAULT 0,
    PricePerNight DECIMAL(10,2) NOT NULL,
    Status        VARCHAR(10)   NOT NULL DEFAULT 'Live'
                  CHECK (Status IN ('Live','Paused')),
    ImagePath     NVARCHAR(200) NULL
);

/* ---------- 4. Rooms ---------- */
CREATE TABLE Rooms (
    RoomId        INT IDENTITY(1,1) PRIMARY KEY,
    HotelId       INT NOT NULL FOREIGN KEY REFERENCES Hotels(HotelId),
    RoomType      NVARCHAR(60) NOT NULL,
    SizeSqm       INT          NULL,
    BedType       NVARCHAR(30) NULL,
    ViewType      NVARCHAR(40) NULL,
    PricePerNight DECIMAL(10,2) NOT NULL,
    Features      NVARCHAR(200) NULL
);

/* ---------- 5. Flights ---------- */
CREATE TABLE Flights (
    FlightId        INT IDENTITY(1,1) PRIMARY KEY,
    FlightNo        VARCHAR(10)  NOT NULL UNIQUE,
    Airline         NVARCHAR(40) NOT NULL,
    Aircraft        NVARCHAR(40) NULL,
    FromCode        CHAR(3)      NOT NULL,
    FromCity        NVARCHAR(40) NOT NULL,
    ToCode          CHAR(3)      NOT NULL,
    ToCity          NVARCHAR(40) NOT NULL,
    DepartTime      TIME         NOT NULL,
    ArriveTime      TIME         NOT NULL,
    DurationMinutes INT          NOT NULL,
    BaseFare        DECIMAL(10,2) NOT NULL,
    TotalSeats      INT          NOT NULL DEFAULT 180,
    SeatsLeft       INT          NOT NULL DEFAULT 180
);

/* ---------- 6. Bookings ---------- */
CREATE TABLE Bookings (
    BookingId    INT IDENTITY(1,1) PRIMARY KEY,
    BookingRef   VARCHAR(12)  NOT NULL UNIQUE,          -- e.g. ET-8492
    UserId       INT NOT NULL FOREIGN KEY REFERENCES Users(UserId),
    BookingType  VARCHAR(10)  NOT NULL
                 CHECK (BookingType IN ('Flight','Hotel','Package')),
    FlightId     INT NULL FOREIGN KEY REFERENCES Flights(FlightId),
    HotelId      INT NULL FOREIGN KEY REFERENCES Hotels(HotelId),
    RoomId       INT NULL FOREIGN KEY REFERENCES Rooms(RoomId),
    TravelDate   DATE NULL,
    CheckIn      DATE NULL,
    CheckOut     DATE NULL,
    Passengers   INT  NOT NULL DEFAULT 1 CHECK (Passengers BETWEEN 1 AND 9),
    SeatNo       VARCHAR(4)   NULL,
    Subtotal     DECIMAL(10,2) NOT NULL DEFAULT 0,
    Taxes        DECIMAL(10,2) NOT NULL DEFAULT 0,
    Discount     DECIMAL(10,2) NOT NULL DEFAULT 0,
    TotalAmount  DECIMAL(10,2) NOT NULL DEFAULT 0,
    Status       VARCHAR(10)  NOT NULL DEFAULT 'Pending'
                 CHECK (Status IN ('Pending','Confirmed','Cancelled','Completed')),
    CreatedAt    DATETIME     NOT NULL DEFAULT GETDATE()
);

/* ---------- 7. Passengers (per booking) ---------- */
CREATE TABLE Passengers (
    PassengerId    INT IDENTITY(1,1) PRIMARY KEY,
    BookingId      INT NOT NULL FOREIGN KEY REFERENCES Bookings(BookingId) ON DELETE CASCADE,
    FirstName      NVARCHAR(30) NOT NULL,
    LastName       NVARCHAR(30) NOT NULL,
    DateOfBirth    DATE         NULL,
    Gender         VARCHAR(10)  NULL,
    PassportNumber VARCHAR(10)  NULL
);

/* ---------- 8. Payments ---------- */
CREATE TABLE Payments (
    PaymentId  INT IDENTITY(1,1) PRIMARY KEY,
    BookingId  INT NOT NULL FOREIGN KEY REFERENCES Bookings(BookingId),
    Method     VARCHAR(15) NOT NULL
               CHECK (Method IN ('Card','UPI','NetBanking')),
    CardLast4  CHAR(4)     NULL,
    Amount     DECIMAL(10,2) NOT NULL,
    Status     VARCHAR(10) NOT NULL DEFAULT 'Paid'
               CHECK (Status IN ('Paid','Failed','Refunded')),
    PaidAt     DATETIME    NOT NULL DEFAULT GETDATE()
);

/* ---------- 9. Cancellations ---------- */
CREATE TABLE Cancellations (
    CancellationId INT IDENTITY(1,1) PRIMARY KEY,
    BookingId      INT NOT NULL FOREIGN KEY REFERENCES Bookings(BookingId),
    Reason         NVARCHAR(100) NULL,
    CancellationFee DECIMAL(10,2) NOT NULL DEFAULT 0,
    RefundAmount   DECIMAL(10,2) NOT NULL DEFAULT 0,
    RefundStatus   VARCHAR(12)  NOT NULL DEFAULT 'Processing'
                   CHECK (RefundStatus IN ('Processing','Completed')),
    CancelledAt    DATETIME     NOT NULL DEFAULT GETDATE()
);

/* ---------- 10. SavedDestinations (many-to-many) ---------- */
CREATE TABLE SavedDestinations (
    UserId        INT NOT NULL FOREIGN KEY REFERENCES Users(UserId),
    DestinationId INT NOT NULL FOREIGN KEY REFERENCES Destinations(DestinationId),
    SavedAt       DATETIME NOT NULL DEFAULT GETDATE(),
    PRIMARY KEY (UserId, DestinationId)
);
GO

/* ============================================================
   Sample data
   ============================================================ */

-- Demo login: demo@easytravel.in / Demo@123
INSERT INTO Users (FullName, Email, Phone, PasswordHash, City, Role) VALUES
('Arjun Sharma', 'demo@easytravel.in', '9876543210',
 'ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73', 'Mumbai', 'Customer'),
('Rehan Admin', 'admin@easytravel.in', '9876500000',
 'ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73', 'Mumbai', 'Admin');

INSERT INTO Destinations (Name, State, Tagline, BestTime, IdealStayDays, StartingPrice, Rating, ImagePath) VALUES
('Udaipur', 'Rajasthan', 'Royal Heritage',     'Oct - Mar', '5 - 7 Days', 12500, 4.9, 'images/udaipur.jpg'),
('Goa',     'Goa',       'Coastal Escape',     'Nov - Feb', '4 - 6 Days',  7500, 4.5, 'images/goa.jpg'),
('Leh',     'Ladakh',    'Mountain Adventure', 'May - Sep', '6 - 8 Days', 15000, 4.9, 'images/leh.jpg');

INSERT INTO Hotels (DestinationId, Name, City, Address, Rating, ReviewCount, PricePerNight, ImagePath) VALUES
(1, 'Taj Lake Palace',          'Udaipur', 'Lake Pichola, Udaipur',           4.9, 1284, 65000, 'images/lake.jpg'),
(1, 'The Oberoi Udaivilas',     'Udaipur', 'Lake Pichola, Udaipur',           4.8,  960, 75000, 'images/taj.jpg'),
(1, 'Rajasthan Heritage Haveli','Udaipur', 'Civil Lines, Udaipur',            4.6,  412, 22800, 'images/rambagh.jpg');

INSERT INTO Rooms (HotelId, RoomType, SizeSqm, BedType, ViewType, PricePerNight, Features) VALUES
(1, 'Deluxe Room',      71,  'King Bed', 'City View',  24999, 'Soaking Tub, Living Area'),
(1, 'Ocean View Suite', 121, 'King Bed', 'Ocean View', 37500, 'Free Cancellation, Breakfast, Lounge Access');

INSERT INTO Flights (FlightNo, Airline, Aircraft, FromCode, FromCity, ToCode, ToCity, DepartTime, ArriveTime, DurationMinutes, BaseFare, TotalSeats, SeatsLeft) VALUES
('6E-204',  'IndiGo',   'Airbus A321neo',       'BOM', 'Mumbai', 'DEL', 'Delhi', '18:30', '21:15', 165, 4580, 220, 42),
('AI-864',  'Air India','Boeing 787 Dreamliner','BOM', 'Mumbai', 'DEL', 'Delhi', '08:00', '10:15', 135, 7100, 256, 61),
('UK-955',  'Vistara',  'Airbus A320neo',       'BOM', 'Mumbai', 'DEL', 'Delhi', '21:15', '23:25', 130, 5800, 180, 25);

INSERT INTO Bookings (BookingRef, UserId, BookingType, FlightId, TravelDate, Passengers, SeatNo, Subtotal, Taxes, TotalAmount, Status) VALUES
('ET-8492', 1, 'Flight', 1, '2026-10-15', 1, '1C', 8080, 1220, 9300, 'Confirmed');

INSERT INTO Passengers (BookingId, FirstName, LastName, Gender) VALUES
(1, 'Arjun', 'Sharma', 'Male');

INSERT INTO Payments (BookingId, Method, CardLast4, Amount) VALUES
(1, 'Card', '4242', 9300);

INSERT INTO SavedDestinations (UserId, DestinationId) VALUES (1, 2), (1, 3);
GO
