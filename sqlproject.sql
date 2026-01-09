-- Create database
CREATE DATABASE student_db;
USE student_db;

-- Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

-- Courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Enrollments table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert data
INSERT INTO students VALUES
(1, 'Rahul', 20, 'CSE'),
(2, 'Anita', 21, 'ECE');

INSERT INTO courses VALUES
(101, 'SQL Basics'),
(102, 'Python');

INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 2, 102);

-- Queries
SELECT * FROM students;

SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;