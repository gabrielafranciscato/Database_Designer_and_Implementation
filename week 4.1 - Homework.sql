
-- =====================================
-- TASK 1: CREATE STUDENT RELATION
-- =====================================

CREATE TABLE StudentHomework (
    StudentID TEXT PRIMARY KEY,
    StudentName TEXT NOT NULL,
    Age INTEGER,
    Course TEXT,
    City TEXT
);

-- Insert five student records
-- Run this INSERT only once.

INSERT INTO StudentHomework
(StudentID, StudentName, Age, Course, City)
VALUES
('S201', 'Emma Wilson', 21, 'Computing', 'Liverpool'),
('S202', 'James Brown', 24, 'Business', 'Manchester'),
('S203', 'Sofia Taylor', 19, 'Computing', 'Liverpool'),
('S204', 'Oliver Smith', 26, 'Nursing', 'Leeds'),
('S205', 'Amelia Jones', 22, 'Business', 'London');


-- =====================================
-- TASK 2: SELECTION (RESTRICT)
-- =====================================

-- Requirement 1: Students studying Computing
SELECT *
FROM StudentHomework
WHERE Course = 'Computing';

-- Requirement 2: Students older than 22
SELECT *
FROM StudentHomework
WHERE Age > 22;


-- =====================================
-- TASK 3: PROJECTION
-- =====================================

-- Requirement 3: Student names and courses
SELECT StudentName, Course
FROM StudentHomework;

-- Requirement 4: Student names and cities
SELECT StudentName, City
FROM StudentHomework;


-- =====================================
-- TASK 4: CREATE A RELATED RELATION
-- =====================================

CREATE TABLE IF NOT EXISTS StudentActivity (
    ActivityID INTEGER PRIMARY KEY,
    StudentID TEXT,
    ActivityName TEXT,
    FOREIGN KEY (StudentID)
        REFERENCES StudentHomework(StudentID)
);

-- Insert activities (run only once)
INSERT INTO StudentActivity
(ActivityID, StudentID, ActivityName)
VALUES
(1, 'S201', 'Football'),
(2, 'S202', 'Swimming'),
(3, 'S203', 'Basketball'),
(4, 'S204', 'Running'),
(5, 'S205', 'Tennis');


-- =====================================
-- TASK 5: JOIN
-- =====================================

-- Requirement 5: Display student names
-- and their activities

SELECT
    StudentHomework.StudentName,
    StudentActivity.ActivityName
FROM StudentHomework
INNER JOIN StudentActivity
    ON StudentHomework.StudentID =
       StudentActivity.StudentID;
