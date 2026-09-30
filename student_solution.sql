USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(10, 'Computer Science'),
(20, 'Mathematics'),
(30, 'Physics');


CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50)
);

INSERT INTO Faculty (FacultyID, FacultyName) VALUES
(1, 'Dr. Kumar'),
(2, 'Dr. Priya'),
(3, 'Dr. Ravi');


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

INSERT INTO Course (CourseID, CourseName, FacultyID) VALUES
(201, 'Database Systems', 1),
(202, 'Data Structures', 2),
(203, 'Mathematics', 2),
(204, 'Computer Networks', 3);


CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Arun', 10),
(1002, 'Priya', 20),
(1003, 'Kumar', 10),
(1004, 'Nisha', 30);


CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201),
(5, 1004, 204);
