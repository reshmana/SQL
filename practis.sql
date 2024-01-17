CREATE DATABASE Ccollage;
USE collage;
CREATE TABLE students (rollno INT PRIMARY KEY,name VARCHAR(50),marks INT NOT NULl,grade VARCHAR(1),city VARCHAR(50));
INSERT INTO students VALUES(101,'anil',78,'C','pune'),(102,'bhumika',93,'A','mumbai'),(103,'chatan',85,'A','mumbai'),
(104,'chruv',96,'A','dehli'),(105,'emanul',12,'F','dehli'),(106,'farah',82,'B','dehli');
SELECT * FROM students;
SELECT name,marks from students;
SELECT DISTinct city from students;
SELECT * FROM students WHere marks >80 AND city= 'mumbai';
SELECT * FROM students WHere marks >80 OR city= 'mumbai';
SELECT * FROM students WHere marks between 80 AND 90;
SELECT * FROM students WHere   city in ('mumbai','dehli');
SELECT * FROM students WHere   city not in ('mumbai','dehli');
SELECT * FROM students where marks >75  limit 3;
SELECT * FROM students order by city ASC;
SELECT * FROM students order by marks DESC limit 3;
SELECT avg (marks) FROM students;
SELECT max(marks)  FROM students;
SELECT min(marks)  FROM students;
SELECT max(marks)  FROM students;
SELECT city, count(name) FROM students group by city;
SELECT city , sum(rollno) FROM students group by city;
SELECT city, count(rollno) FROM students group by city;
SELECT marks, max(name) FROM students group by marks;
SELECT city, avg(marks) FROM students group by city order  by city;
SELECT  grade,count(name) from students group by grade order by grade;
SELECT COUNT(name),city FROM students GROUP BY city having max(marks)>90;
SELECT city from students where grade='A' group by city having max(marks)>=93 order by city desc;
SET SQL_SAFE_UPDATES =0;
update students set grade='O' where grade ='A';
update students set grade='B' where marks between 80 and 90;
update students set marks=12 where rollno=105 ;


select * FROM students;
delete FROM students where marks <33;

CREATE TABLE payments(id INT PRIMARY KEY,costumer varchar(50),p_mode varchar(50), city varchar(20));
INSERT INTO payments VALUES(101,'Reshma','netbanking','bengalor'),(102,'simran','creditcard','shimoga'),
(103,'sanket','creditcard','davangere'),(104,'deepthi','netbanking','haveri'),(105,'arun','creditcard','bijapur'),
(106,'ganesh','creditcard','raichur'),(107,'sunil','creditcard','goa'),(108,'pooja','netbanking','sindhanur'),
(109,'anand','netbanking','bengalor'),(110,'sonu','creditcard','bidar');
SELECT p_mode,count(costumer) from payments GROUP BY p_mode;
SELECT * FROM payments;
desc payments;

CREATE TABLE  dept(id INT PRIMARY KEY,name VARCHAR(50));

CREATE TABLE teacher (rollno INT PRIMARY KEY,name VARCHAR(50),dept_id INT,foreign key(dept_id) references dept(id));












