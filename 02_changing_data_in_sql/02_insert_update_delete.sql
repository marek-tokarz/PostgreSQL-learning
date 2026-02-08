-- INSERTING DATA

INSERT INTO students_copy (firstname, lastname, email, age)
    VALUES ('John', 'Smith', 'johnsmith@example.com',21);

SELECT * FROM students_copy;

-- INSERTING MULTIPLE VALUES AT ONCE

INSERT INTO students_copy (firstname, lastname, email, age)
    VALUES ('Adam', 'Smith', 'adamsmith@example.com',26),
           ('Jane', 'Doe', 'janedoe@example.com', 30)

SELECT * FROM students_copy;

-- UPDATING VALUES

UPDATE students_copy SET payment_status = 'PAID' WHERE firstname = 'John' AND lastname = 'Smith';

SELECT * FROM students_copy ORDER BY id DESC;

-- CALCULATIONS WITH UPDATE

UPDATE students_copy SET age = age + 1;

SELECT * FROM students_copy ORDER BY id DESC;

-- UPDATING MULTIPLE COLUMNS

UPDATE students_copy SET payment_status = 'PENDING', course_id = 4 WHERE id = 15;

-- DELETING DATA

DELETE FROM students_copy WHERE id = 204;

SELECT * FROM students_copy ORDER BY id DESC;