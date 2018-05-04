CREATE TABLE students (
    "id" INTEGER,
    "first_name" VARCHAR(16),
    "last_name" VARCHAR (16),
    "phone_number" VARCHAR(16),
    "email" VARCHAR(32),
    "address" VARCHAR(64),

  PRIMARY KEY ("id")
);


CREATE TABLE classes (
  "id" INTEGER,
  "class_title" VARCHAR(32),
  "department" VARCHAR(32),
  
  PRIMARY KEY("id")
);


CREATE TABLE completed_classes (
  "student_id" INTEGER,
  "class_id" INTEGER,
  "final_grade" VARCHAR(3),
  
  FOREIGN KEY ("student_id")
    REFERENCES "students" ("id"),
  
  FOREIGN KEY ("class_id")
    REFERENCES "classes" ("id")

);

INSERT INTO students ("id", "first_name", "last_name", "phone_number", "email", "address")
VALUES
(1, 'Dave', 'Smith', '555-555-1234', 'dave@bigdave.com', '25 Dave Avenue, London, UK'),
(2, 'Theo', 'Cat', '123-456-7890', 'theo@meowmeow.com', '99 Fish Lane, Portland, OR'),
(3, 'Bloc', 'Head', '987-654-3210', 'bloc@blochead.io', '1 Bloc Avenue, San Francisco, CA'),
(4, 'Sir', 'Mixalot', '555-555-9999', 'sir@ilikebigyouknowhat.com', '123 The Derrieres, New York, NY'),
(5, 'Mickey', 'Mouse', '555-555-5555', 'mickey@disney.com', '1 Disney Lane, Orlando, FL');

INSERT INTO classes ("id", "class_title", "department")
VALUES
(001, 'CS 101: Introduction', 'Computer Science'),
(002, 'History of England', 'History'),
(003, 'Polynomials', 'Mathematics'),
(004, 'Organic Chemistry', 'Chemistry'),
(005, 'Shakespeare 101', 'English Literature'),
(006, 'Composition 301', 'Music'),
(007, 'Astronomy', 'Physics');


INSERT INTO completed_classes ("student_id", "class_id", "final_grade")
VALUES
(1, 1, 'C'),
(1, 5, 'B'),
(2, 1, 'A'),
(2, 6, 'A'),
(2, 2, 'A'),
(3, 7, 'C'),
(3, 6, 'D'),
(3, 4, 'C'),
(4, 1, 'C'),
(4, 2, 'B'),
(4, 3, 'D'),
(5, 7, 'A'),
(5, 6, 'A'),
(5, 5, 'B'),
(5, 4, 'B'),
(5, 3, 'A'),
(5, 1, 'B');


