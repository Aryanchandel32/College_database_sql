DROP DATABASE IF EXISTS CollegeDB;

CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DateOfBirth DATE,
    Major VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT
);

CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50)
);

CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);

CREATE TABLE Course_Instructors (
    CourseID INT,
    InstructorID INT,
    PRIMARY KEY (CourseID, InstructorID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID) ON DELETE CASCADE
);

-- Insert sample data into Students
INSERT INTO Students (Name, DateOfBirth, Major) VALUES
('Aarav Sharma', '2001-02-15', 'Computer Science'),
('Vivaan Patel', '2002-03-20', 'Mathematics'),
('Aditya Gupta', '2000-11-30', 'Physics'),
('Vihaan Singh', '2004-07-21', 'Chemistry'),
('Arjun Rao', '2003-05-11', 'Biology'),
('Sai Reddy', '2001-08-25', 'Electronics'),
('Reyansh Verma', '2000-09-15', 'Mechanical Engineering'),
('Krishna Iyer', '2002-12-12', 'Civil Engineering'),
('Ishaan Nair', '2005-01-01', 'Computer Science'),
('Kiaan Bose', '2000-06-23', 'Mathematics'),
('Rudra Joshi', '2003-10-19', 'Physics'),
('Ayaan Desai', '2004-04-14', 'Chemistry'),
('Arnav Malhotra', '2002-11-09', 'Biology'),
('Kabir Mehta', '2005-03-03', 'Electronics'),
('Ranveer Chatterjee', '2001-07-07', 'Mechanical Engineering'),
('Shaurya Sengupta', '2004-08-08', 'Civil Engineering'),
('Aaditya Roy', '2003-12-31', 'Computer Science'),
('Aryan Bhatt', '2000-02-22', 'Mathematics'),
('Dhruv Khanna', '2001-05-05', 'Physics'),
('Arnav Kapoor', '2004-11-18', 'Chemistry');

-- Insert sample data into Courses
INSERT INTO Courses (CourseName, Credits) VALUES
('Database Systems', 3),
('Algorithms', 4),
('Physics', 3),
('Chemistry', 3),
('Biology', 4),
('Electronics', 3),
('Mechanical Engineering', 4),
('Civil Engineering', 3),
('Mathematics', 4),
('Computer Networks', 3);

-- Insert sample data into Instructors
INSERT INTO Instructors (Name, Department) VALUES
('Dr. Anil Kumar', 'Computer Science'),
('Dr. Suresh Gupta', 'Mathematics'),
('Dr. Meera Sharma', 'Physics'),
('Dr. Ravi Patel', 'Chemistry'),
('Dr. Neha Reddy', 'Biology'),
('Dr. Amit Desai', 'Electronics'),
('Dr. Priya Iyer', 'Mechanical Engineering'),
('Dr. Kavita Rao', 'Civil Engineering'),
('Dr. Rajesh Singh', 'Computer Science'),
('Dr. Ritu Malhotra', 'Mathematics');

-- Insert sample data into Enrollments
INSERT INTO Enrollments (StudentID, CourseID, Grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 3, 'A'),
(2, 4, 'B'),
(3, 5, 'C'),
(3, 6, 'B'),
(4, 7, 'A'),
(4, 8, 'C'),
(5, 9, 'B'),
(5, 10, 'A'),
(6, 1, 'C'),
(6, 2, 'B'),
(7, 3, 'A'),
(7, 4, 'B'),
(8, 5, 'C'),
(8, 6, 'B'),
(9, 7, 'A'),
(9, 8, 'C'),
(10, 9, 'B'),
(10, 10, 'A');

-- Insert sample data into Course_Instructors
INSERT INTO Course_Instructors (CourseID, InstructorID) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 2),
(10, 9);
