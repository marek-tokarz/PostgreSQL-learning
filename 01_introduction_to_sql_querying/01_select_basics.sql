-- SELECTING DATA

-- simple SELECT - all data from a specific table
SELECT * FROM students;
-- SELECT from a column: 'firstname'
SELECT firstname FROM students;
-- SELECT from a two columns: 'firstname' and 'lastname'
SELECT firstname, lastname FROM students;

-- FILTERING DATA

-- simple filtering
SELECT * FROM students WHERE age = 25;
SELECT * FROM students WHERE firstname = 'Alex'; 

-- more complex filtering
SELECT * FROM students WHERE age = 25 OR age = 26;
SELECT * FROM students WHERE firstname = 'ALex' AND age = 26;

-- filtering with negation
SELECT * FROM students WHERE firstname != 'Alex';
-- clause != is equal to <>

SELECT * FROM students WHERE firstname <> 'Alex';

-- mathematical comparisons
SELECT * FROM students WHERE age >= 21;

-- NOT clause
SELECT * FROM students WHERE NOT (age >= 21);

/*
multi
line
comment
*/

-- LABELING TABLE NAMES

SELECT firstname AS f, lastname AS l FROM students;

-- AGGREGATE FUNCTIONS

SELECT COUNT(*) FROM students;
SELECT COUNT(*) FROM students WHERE age = 25;

SELECT MAX(age) FROM students;
SELECT MIN(age) FROM students;
SELECT SUM(age) FROM students;
SELECT AVG(age) FROM students;

-- ERROR: ACCESING A TABLE AND AGGREGATING FUNCTION

-- SELECT firstname, COUNT(*) FROM students;
/* Execute fail : kolumna "students.firstname" musi występować w klauzuli GROUP BY lub być użyta w funkcji agregującej */

-- COMBINIG MULTIPLE AGGREGATE FUNCTIONS

SELECT COUNT(*), MAX(age), MIN(age) FROM students;

-- SELECTING ONLY DISTINC ENTRIES

SELECT DISTINCT age FROM students;

-- COMBINIG DISTINCT AND AGGREGATE FUNCTIONS

SELECT COUNT(DISTINCT age) FROM students;

-- FILTERING WITH LIKE

SELECT COUNT(*) FROM students WHERE email LIKE '%gmail.com';

select * FROM students WHERE firstname NOT LIKE 'M____'