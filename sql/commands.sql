/*
SQL Basics:

CREATE TABLE creates a new table.
INSERT INTO adds a new row to a table.
SELECT queries data from a table.
UPDATE edits a row in a table.
ALTER TABLE changes an existing table.
DELETE FROM deletes rows from a table.
*/
CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER);
INSERT INTO celebs (id, name, age) VALUES (1, 'qaz buz', 21);
SELECT name FROM celebs;
UPDATE celebs SET age = 22 WHERE id = 1;
ALTER TABLE celebs ADD COLUMN twitter_handle TEXT;
DELETE FROM celebs WHERE twitter_handle IS NULL;

/*
Queries:

SELECT is the clause you use every time you want to query information from a database.
WHERE is a popular command that lets you filter the results of the query based on conditions that you specify.
LIKE and BETWEEN are special operators that can be used in a WHERE clause (used for pattern matching)
AND and OR are special operators that you can use with WHERE to filter the query on two or more conditions.
ORDER BY lets you sort the results of the query in either ascending or descending order.
LIMIT lets you specify the maximum number of rows that the query will return. This is especially important in large 
	tables that have thousands or even millions of rows.

*/
SELECT name, imdb_rating FROM movies;
SELECT DISTINCT genre FROM movies; -- unique
SELECT * FROM movies WHERE imdb_rating > 8;
SELECT * FROM movies WHERE name LIKE 'Se_en'; --search for a pattern
SELECT * FROM movies WHERE name LIKE '%man%'; -- % means 0 or more
SELECT * FROM movies WHERE year BETWEEN 1990 AND 2000 AND genre = 'comedy';
SELECT * FROM movies ORDER BY imdb_rating DESC; -- ordering can also use ASC
SELECT * FROM movies ORDER BY imdb_rating ASC LIMIT 3;

/*
Aggregate functions:

COUNT() is a function that takes the name of a column as an argument and counts the number of rows where the column is not NULL.
GROUP BY is a clause in SQL that is only used with aggregate functions. It is used in collaboration with the SELECT 
	statement to arrange identical data into groups.
SUM(), MAX(), MIN(), AVG() are functions that take the name of a column as an argument and return the sum/max/min/avg of all the values in that column.
ROUND() is a function that takes a column name and an integer as an argument. It rounds the values in the 
	column to the number of decimal places specified by the integer.
*/
SELECT COUNT(*) FROM fake_apps;
SELECT price, COUNT(*) FROM fake_apps GROUP BY price;
SELECT SUM(downloads) FROM fake_apps;
SELECT MAX(downloads) FROM fake_apps;
SELECT name, category, MAX(downloads) FROM fake_apps GROUP BY category;
SELECT MIN(downloads) FROM fake_apps;
SELECT AVG(downloads) FROM fake_apps;
SELECT price, ROUND(AVG(downloads), 2) FROM fake_apps GROUP BY price;


