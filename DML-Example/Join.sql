show databases;
use gameshopdb;
SELECT * FROM customers;
SELECT customer_id FROM customers WHERE customer_id >= 3;
SELECT * FROM products WHERE price > 100;
SELECT title, stock, price, stock*price AS stock_value FROM products;
SELECT * FROM customers WHERE name = "Aya";
SELECT * FROM customers WHERE name != "Aya";
SELECT * FROM orders WHERE date_placed BETWEEN '2021-05-08' AND '2021-05-10';

SELECT * FROM customers WHERE name LIKE '%e';
SELECT * FROM customers WHERE name LIKE 'A%e';
SELECT * FROM customers WHERE name LIKE 't%';
SELECT * FROM customers WHERE name LIKE '%y';
SELECT * FROM customers WHERE name IN ('Aya', 'Hani', 'Amet');
SELECT * FROM customers WHERE email IS NOT NULL;
SELECT price, title FROM products ORDER BY price DESC;
SELECT price, title FROM products ORDER BY price ASC;
SELECT * FROM customers LIMIT 3;
SELECT * FROM products ORDER BY price DESC LIMIT 4;
SELECT * FROM products ORDER BY price ASC LIMIT 4;

-- ==================================================================================

USE sakila;

SHOW tables;

SELECT * FROM actor WHERE first_name = "John";
SELECT * FROM actor WHERE last_name = "Neeson";
SELECT * FROM actor WHERE actor_id % 10 = 0;
SELECT description FROM film WHERE film_id = 100;
SELECT * FROM film WHERE rating != "R";
SELECT * FROM film ORDER BY length DESC LIMIT 10;
SELECT * FROM film WHERE special_features LIKE '%Deleted Scenes%';
SELECT * FROM film WHERE title LIKE '%horror%';

-- ===========================================================================================

SELECT DISTINCT name FROM language ORDER BY name DESC;
SELECT * FROM actor WHERE last_name LIKE '%son' ORDER BY first_name ASC;

SELECT DISTINCT COUNT(last_name), last_name
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1
ORDER BY last_name DESC;

-- ================SCHOOL DATABASE=================================================================
CREATE DATABASE school;

USE school;
CREATE TABLE students(
Student_id INT NOT NULL AUTO_INCREMENT,
First_name varchar(50) not null,
Last_name varchar(50) not null,
Age int NOT NULL,
primary key(Student_id)
);

CREATE TABLE classes(
Class_id INT NOT NULL AUTO_INCREMENT,
Subject varchar(50) not null,
Description varchar(50) not null,
Level int NOT NULL,
primary key(Class_id)
);

CREATE TABLE enrollment(
Enrollment_id INT NOT NULL AUTO_INCREMENT,
Student_id INT NOT NULL,
Class_id INT NOT NULL,
primary key(Enrollment_id),
foreign key (Student_id) references students(Student_id),
foreign key (Class_id) references classes(Class_id)
);


INSERT INTO students(First_name, Last_name, Age)
Values("TG", "Ermi", 18),("Mohammed", "Ahmed", 17),("Abdi", "Sami", 11);
INSERT INTO students(First_name, Last_name, Age)
Values("Joy", "James", 16),("Biruk", "Sis", 15),("Luki", "Sami", 19);

INSERT INTO classes(Subject, Description , Level)
Values("Science", "Life cicle", 1),("Reading", "fiction and non fiction", 2),("Maths", "Algebra", 1);

INSERT INTO enrollment(Student_id, Class_id)
Values(1,1),(2,2),(3,3);

select * from enrollment;


SELECT *
FROM students st
JOIN classes cl ON st.Student_id = cl.class_id;

select enrollment.enrollment_id, classes.subject
from enrollment
join classes on classes.class_id = enrollment.class_id;





