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