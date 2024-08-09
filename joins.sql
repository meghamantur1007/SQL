CREATE TABLE students (student_id INT PRIMARY KEY,student_name VARCHAR(50) NOT NULL,birthdate DATE,
email VARCHAR(100) UNIQUE);

CREATE TABLE courses (course_id INT PRIMARY KEY,course_name VARCHAR(50) NOT NULL,course_description 
TEXT,credits INT CHECK (credits > 0));

CREATE TABLE enrollments (enrollment_id INT PRIMARY KEY,student_id INT,course_id INT,
enrollment_date DATE NOT NULL,FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id));

CREATE TABLE grades (grade_id INT PRIMARY KEY,enrollment_id INT,grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'F')),
grading_date DATE NOT NULL,FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id));

INSERT INTO students VALUES(1, 'Ravi Kumar', '2000-01-01', 'ravi.kumar@example.com');
INSERT INTO students VALUES(2, 'Sita Devi', '1999-12-15', 'sita.devi@example.com');
INSERT INTO students VALUES(3, 'Amit Singh', '2001-05-21', 'amit.singh@example.com');
INSERT INTO students VALUES(4, 'Lakshmi Nair', '1998-08-11', 'lakshmi.nair@example.com');
INSERT INTO students VALUES(5, 'Vikram Shah', '2000-11-30', 'vikram.shah@example.com');
INSERT INTO students VALUES(6, 'Priya Patil', '2001-03-22', 'priya.patil@example.com');
INSERT INTO students VALUES(7, 'Rahul Desai', '1999-10-10', 'rahul.desai@example.com');
INSERT INTO students VALUES(8, 'Kiran Rao', '1998-02-19', 'kiran.rao@example.com');
INSERT INTO students VALUES(9, 'Anjali Gupta', '2001-07-15', 'anjali.gupta@example.com');
INSERT INTO students VALUES(10, 'Pooja Mehta', '2000-04-25', 'pooja.mehta@example.com');
INSERT INTO students VALUES(11, 'Rajesh Iyer', '1999-09-09', 'rajesh.iyer@example.com');
INSERT INTO students VALUES(12, 'Sunita Sharma', '2000-06-06', 'sunita.sharma@example.com');
INSERT INTO students VALUES(13, 'Manoj Yadav', '2001-01-01', 'manoj.yadav@example.com');
INSERT INTO students VALUES(14, 'Neha Verma', '1998-07-07', 'neha.verma@example.com');
INSERT INTO students VALUES(15, 'Suresh Naik', '2000-10-10', 'suresh.naik@example.com');


INSERT INTO courses VALUES(1, 'Mathematics', 'Advanced Mathematics course', 4);
INSERT INTO courses VALUES(2, 'Physics', 'Introduction to Physics', 3);
INSERT INTO courses VALUES(3, 'Chemistry', 'Organic Chemistry', 4);
INSERT INTO courses VALUES(4, 'Biology', 'Basic Biology', 3);
INSERT INTO courses VALUES(5, 'Computer Science', 'Introduction to Programming', 5);
INSERT INTO courses VALUES(6, 'English Literature', 'Study of English Literature', 2);
INSERT INTO courses VALUES(7, 'History', 'World History Overview', 3);
INSERT INTO courses VALUES(8, 'Political Science', 'Introduction to Political Science', 3);
INSERT INTO courses VALUES(9, 'Economics', 'Principles of Economics', 4);
INSERT INTO courses VALUES(10, 'Philosophy', 'Introduction to Philosophy', 2);
INSERT INTO courses VALUES(11, 'Sociology', 'Introduction to Sociology', 3);
INSERT INTO courses VALUES(12, 'Statistics', 'Applied Statistics', 4);
INSERT INTO courses VALUES(13, 'Psychology', 'Basics of Psychology', 3);
INSERT INTO courses VALUES(14, 'Art', 'Fundamentals of Art', 2);
INSERT INTO courses VALUES(15, 'Music', 'Introduction to Music Theory', 2);


INSERT INTO enrollments VALUES(1, 1, 1, '2024-01-10');
INSERT INTO enrollments VALUES(2, 2, 2, '2024-01-15');
INSERT INTO enrollments VALUES(3, 3, 3, '2024-01-20');
INSERT INTO enrollments VALUES(4, 4, 4, '2024-01-25');
INSERT INTO enrollments VALUES(5, 5, 5, '2024-01-30');
INSERT INTO enrollments VALUES(6, 6, 6, '2024-02-05');
INSERT INTO enrollments VALUES(7, 7, 7, '2024-02-10');
INSERT INTO enrollments VALUES(8, 8, 8, '2024-02-15');
INSERT INTO enrollments VALUES(9, 9, 9, '2024-02-20');
INSERT INTO enrollments VALUES(10, 10, 10, '2024-02-25');
INSERT INTO enrollments VALUES(11, 11, 11, '2024-03-01');
INSERT INTO enrollments VALUES(12, 12, 12, '2024-03-05');
INSERT INTO enrollments VALUES(13, 13, 13, '2024-03-10');
INSERT INTO enrollments VALUES(14, 14, 14, '2024-03-15');
INSERT INTO enrollments VALUES(15, 15, 15, '2024-03-20');

INSERT INTO grades VALUES(1, 1, 'A', '2024-06-10');
INSERT INTO grades VALUES(2, 2, 'B', '2024-06-15');
INSERT INTO grades VALUES(3, 3, 'A', '2024-06-20');
INSERT INTO grades VALUES(4, 4, 'C', '2024-06-25');
INSERT INTO grades VALUES(5, 5, 'B', '2024-06-30');
INSERT INTO grades VALUES(6, 6, 'A', '2024-07-05');
INSERT INTO grades VALUES(7, 7, 'D', '2024-07-10');
INSERT INTO grades VALUES(8, 8, 'F', '2024-07-15');
INSERT INTO grades VALUES(9, 9, 'B', '2024-07-20');
INSERT INTO grades VALUES(10, 10, 'A', '2024-07-25');
INSERT INTO grades VALUES(11, 11, 'C', '2024-08-01');
INSERT INTO grades VALUES(12, 12, 'B', '2024-08-05');
INSERT INTO grades VALUES(13, 13, 'A', '2024-08-10');
INSERT INTO grades VALUES(14, 14, 'D', '2024-08-15');
INSERT INTO grades VALUES(15, 15, 'F', '2024-08-20');

#Performing INNER JOIN for All 4 Tables

select * from students s inner join courses c on s.student_id=c.course_id
inner join enrollments e on s. student_id=e.student_id
inner join grades g on c.course_id=g.grade_id;

#Performing LEFT JOIN for All 4 Tables

select * from students s left join courses c on s.student_id=c.course_id
left join enrollments e on s. student_id=e.student_id
left join grades g on c.course_id=g.grade_id;


#Performing RIGHT JOIN for All 4 Tables

select * from students s right join courses c on s.student_id=c.course_id
right join enrollments e on s. student_id=e.student_id
right join grades g on c.course_id=g.grade_id;

# Performing Combination of INNER and LEFT JOIN

select * from students s inner join courses c on s.student_id=c.course_id
left join enrollments e on s. student_id=e.student_id
left join grades g on c.course_id=g.grade_id;

# Performing Combination of INNER and RIGHT JOIN
select * from students s inner join courses c on s.student_id=c.course_id
right join enrollments e on s. student_id=e.student_id
right join grades g on c.course_id=g.grade_id;

# Performing Combination of RIGHT and LEFT JOIN
select * from students s right join courses c on s.student_id=c.course_id
left join enrollments e on s. student_id=e.student_id
left join grades g on c.course_id=g.grade_id;

