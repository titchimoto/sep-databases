CREATE TABLE guests (
    "id" INTEGER,
    "first_name" VARCHAR(16),
    "last_name" VARCHAR (16),
    "phone_number" VARCHAR(16),
    "email" VARCHAR(32),
    "address" VARCHAR(64),

  PRIMARY KEY ("id")

);


CREATE TABLE rooms (
    "room_number" INTEGER,
    "floor_number" INTEGER,
    "price_per_night" NUMERIC(5,2),


  PRIMARY KEY ("room_number")

);


CREATE TABLE bookings (
    "id" INTEGER,
    "guest_id" INTEGER,
    "room_id" INTEGER,
    "check_in" DATE,
    "check_out" DATE,

    FOREIGN KEY ("guest_id")
      REFERENCES "guests" ("id"),

    FOREIGN KEY ("room_id")
      REFERENCES "rooms" ("room_number"),

  PRIMARY KEY ("id")

);

INSERT INTO guests ("id", "first_name", "last_name", "phone_number", "email", "address")
VALUES
(1, 'Dave', 'Smith', '555-555-1234', 'dave@bigdave.com', '25 Dave Avenue, London, UK'),
(2, 'Theo', 'Cat', '123-456-7890', 'theo@meowmeow.com', '99 Fish Lane, Portland, OR'),
(3, 'Bloc', 'Head', '987-654-3210', 'bloc@blochead.io', '1 Bloc Avenue, San Francisco, CA'),
(4, 'Sir', 'Mixalot', '555-555-9999', 'sir@ilikebigyouknowhat.com', '123 The Derrieres, New York, NY'),
(5, 'Mickey', 'Mouse', '555-555-5555', 'mickey@disney.com', '1 Disney Lane, Orlando, FL');



INSERT INTO rooms ("room_number", "floor_number", "price_per_night")
VALUES
(001, 01, 250.00),
(002, 01, 225.00),
(003, 01, 375.00),
(004, 02, 450.00),
(005, 02, 500.00);

INSERT INTO bookings ("id", "guest_id", "room_id", "check_in", "check_out")
VALUES 
(0001, 2, 005, CURRENT_DATE - INTERVAL '7 DAYS', CURRENT_DATE - INTERVAL '4 DAYS'),
(0002, 2, 004, CURRENT_DATE - INTERVAL '7 DAYS', CURRENT_DATE - INTERVAL '4 DAYS'),
(0003, 5, 003, CURRENT_DATE - INTERVAL '1 YEAR, 5 DAYS', CURRENT_DATE - INTERVAL '1 YEAR, 1 DAY'),
(0004, 5, 003, CURRENT_DATE - INTERVAL '5 DAYS', CURRENT_DATE - INTERVAL '1 DAY'),
(0005, 4, 002, CURRENT_DATE - INTERVAL '70 DAYS', CURRENT_DATE - INTERVAL '60 DAYS'),
(0006, 3, 002, CURRENT_DATE - INTERVAL '2 YEARS, 5 DAYS', CURRENT_DATE - INTERVAL '2 YEARS');


