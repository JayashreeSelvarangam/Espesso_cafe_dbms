-- SQL is case-insensitive

/*
we will follow
UPPERCASE:keywords;
lowercase:Non-keywords
*/


-- USE store;

-- SHOW TABLES;

-- USE exercise_hr;

-- SHOW TABLES;


-- USE store;

-- SHOW TABLES;

-- SELECT *
-- FROM customers;

-- SELECT *
-- FROM customers
-- ORDER BY first_name ASC;

-- SELECT *
-- FROM customers
-- ORDER BY last_name DESC;

-- SELECT *
-- FROM  employees
-- ORDER BY first_name DESC;

-- USE exercise_hr;

-- SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY 
-- FROM employees
-- ORDER BY salary ASC;

-- SELECT *
-- FROM  employees
-- ORDER BY FIRST_NAME DESC;
-- USE store;

-- SELECT *
-- FROM  customers
-- ORDER BY last_name DESC,birth_date DESC;

-- SELECT 1 + 2 AS value;

-- SELECT first_name,points,last_name
-- FROM customers;

/*
SELECT <column_1>,<column_2>....<column_n>
FROM <table_name>;

SELECT * for all columns
FROM <table_name>;
*/

-- SELECT 	first_name, last_name, points, points*1.1 AS 'discount_factor'
-- FROM customers;

/*
DATA TYPES:
Strings,numbers,dates
*/
-- USE store;
-- -- select *
-- -- from customers
-- select birth_date 
-- from customers;
-- SELECT  date_format(FROM_DAYS(DATEDIFF(NOW(),birth_date)),'%Y')+ 0 AS age
-- FROM customers;



-- USE store;
-- select *
-- FROM customers;

-- SELECT 171*214+625 AS value ;
-- USE exercise_hr;
-- SELECT first_name "FIRST_NAME" ,last_name "LAST_NAME"
-- FROM employees;

-- USE exercise_hr;
-- SELECT first_name ,last_name , salary ,salary * .15 AS PF
-- FROM employees;

-- SELECT department_id
-- FROM employees;

USE store;
SELECT *
FROM customers
WHERE state = 'FL' ;

USE store;
SELECT *
FROM customers
WHERE points > 3000 ;

USE store;
SELECT *
FROM customers
WHERE birth_date > 1990-01-01 ;

USE store;
SELECT *
FROM customers
WHERE  state != 'FL' ;

USE store;
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' AND state ='FL' ;

USE store;
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' AND points > 3000 ;

USE store;
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points > 3000 ;

USE store;
SELECT *
FROM customers
WHERE points < 4000 OR birth_date > '1990-01-01' AND state = 'VA' ;

USE store;
SELECT *
FROM customers
WHERE points < 4000 AND birth_date > '1990-01-01' OR state = 'VA' ;

USE store;
SELECT *
FROM customers
WHERE NOT (state = 'FL') ;

USE exercise_hr;
SELECT first_name,last_name
FROM employees
WHERE hire_date = '1989-01-01' ;

USE exercise_hr;
SELECT first_name,last_name,SALARY
FROM employees
WHERE NOT(salary >= 10000 AND salary <= 15000) ;

USE exercise_hr;
SELECT first_name,last_name,department_id
FROM employees
WHERE (department_id =30  OR department_id = 100) 
ORDER BY department_ID ASC;


USE exercise_hr;
SELECT first_name,last_name
FROM employees
WHERE (department_id =30  OR department_id = 100)AND(department_id =30  OR department_id = 100) ;


SELECT *
FROM customers
WHERE state ='FL' OR state ='VA' OR state =' GA';

USE exercise_hr;
SELECT *
FROM employees
WHERE last_name IN  ('BLAKE' ,'SCOTT', 'KING' , 'FORD' ); 

--  Return products with
-- quantity in stock equal to 49, 38, 72
-- no product with quantity_in_stock = 72

USE store;
SELECT *
FROM products
WHERE quantity_in_stock IN  (49,38,72); 

USE store;
SELECT *
FROM customers
WHERE points >= 3000 AND points <= 10000 ;

USE store;
SELECT *
FROM customers
WHERE points BETWEEN 3000 AND 10000 ;

USE store;
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01' ;

USE store;
SELECT *
FROM customers
WHERE birth_date NOT BETWEEN '1990-01-01' AND '2000-01-01' ;

USE store;
SELECT *
FROM customers
WHERE last_name LIKE 'MacCaffrey';

USE store;
SELECT *
FROM customers;

USE store;
SELECT *
FROM customers
WHERE last_name LIKE 'b%';

USE store;
SELECT *
FROM customers
WHERE last_name LIKE '_____y';

USE store;
SELECT *
FROM customers
WHERE state LIKE '%A';

USE store;
SELECT *
FROM customers
WHERE state LIKE '_A';

USE store;
SELECT *
FROM customers
WHERE last_name LIKE 'b____y';

-- regexp

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '^Mac';

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP 'field$|^Mac';

USE store;
SELECT *
FROM customers
WHERE last_name LIKE '%EY' OR '%ON';

USE store;
SELECT *
FROM customers
WHERE first_name LIKE 'ELKA'OR'AMBUR';

USE store;
SELECT *
FROM customers
WHERE last_name LIKE 'MY%' OR '%SE%';


USE store;
SELECT *
FROM customers
WHERE last_name LIKE 'MY%' OR '%SE%';




/*
^(caret)-starts with
$ -ends with
| (pipe) -logical OR
[.]-set
*/

-- last name contains ae,be,ce,de,ee,fe,ge,he
USE store;
SELECT *
FROM customers
WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he';

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '[abcdefgh]e';

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';

-- WE want to have customers who have ge ,ie or me in their last_names

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';

-- we want to find last_names with six characters
USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '^[a-z][a-z][a-z][a-z][a-z][a-z]$';

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '^[a-z]{6}$';

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '^.{6}$';

-- dot includes all
--  .* =%
-- --last names contains B followed  R or U-- 

USE exercise_hr;
SELECT *
FROM employees
WHERE last_name LIKE '%b%r%' OR '%b%u%';





USE exercise_hr;
SELECT *
FROM employees
WHERE last_name REGEXP 'b.*[ru]';



-- SQL is case-insensitive
/*
We will follow
Uppercase : Keywords
*/
-- USE exercise_hr;
-- SHOW TABLES;
-- USE store;
-- SELECT *
-- FROM customers;
-- SELECT *
-- FROM customers
-- ORDER BY first_name ASC;
-- -- ORDER BY <COLUMN_NAME> DESC for descending order
-- SELECT *
-- FROM customers
-- ORDER BY last_name DESC;
-- USE exercise_hr;
-- SELECT *
-- FROM employees
-- ORDER BY FIRST_NAME DESC;
-- SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY FROM employees ORDER BY salary ASC;
USE store;
-- SELECT *
-- FROM customers
-- ORDER BY last_name DESC, birth_date DESC;
-- SELECT 1 AS vaue;
-- SELECT  DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y') + 0 AS age
-- FROM customers;
-- USE store;
-- SELECT *
-- FROM customers
-- WHERE state = 'FL';
/* Comparing operator: > >= < <= = != or <> */
-- SELECT *
-- FROM customers
-- WHERE points > 3000 ;
-- USE store;
-- SELECT *
-- FROM customers
-- WHERE state = 'FL' AND birth_date >= '1990-01-01';
-- USE store;
-- SELECT *
-- FROM customers
-- WHERE points > 3000 OR birth_date > '1990-01-01' OR state = 'FL';
-- USE store;
-- SELECT *
-- FROM customers
-- WHERE birth_date >= '1989-01-01' OR points > 3000 AND state = 'VA';
-- USE store;
-- SELECT *
-- FROM customers
-- WHERE points < 4000 AND birth_date >= '1989-01-01' OR state = 'VA';
-- USE store;
-- SELECT *
-- FROM customers
-- WHERE NOT (state = 'FL');
USE store;
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);
SELECT *
FROM customers
WHERE quantity_in_stock IN (49, 38, 72);
-- last name contain 'age'
SELECT *
FROM customers
WHERE last_name LIKE '%age%';
-- last name contain '5 letter and y'
SELECT *
FROM customers
WHERE last_name LIKE '_____y';
-- % any number of character
-- _ single character
-- all customers living in a state ending in A.
SELECT *
FROM customers
WHERE state LIKE '%A';
SELECT *
FROM customers
WHERE last_name LIKE 'b____y';
SELECT *
FROM customers
WHERE last_name REGEXP 'field';
-- ^p means it the word p is start letter.
-- 'field$' it means get word in last in word
SELECT *
FROM customers
WHERE last_name REGEXP 'field$|^mac';
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';
/*
 ^ (caret) - start with
 $ - ends with
 | (pipe) - logical OR
 [.] - set
 */
 SELECT *
FROM customers
WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he';
 SELECT *
FROM customers
WHERE last_name REGEXP '[abcdef]e';
 SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';
-- we want to have customers who have 'ge', 'ie' or'me' in their last name
 SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';
--  want to have customers last names with 6 chracter,
 SELECT *
FROM customers
WHERE last_name REGEXP '^[a-z][a-z][a-z][a-z][a-z][a-z]$';
 SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';
--  want to have customers last names with 6 chracter,
-- .*  = %
-- B followed by R or U in last name
 SELECT *
FROM employees
WHERE last_name REGEXP 'b.*(r|u)';
 SELECT *
FROM employees
WHERE last_name REGEXP 'b.*[ru]';





















USE store;

EXPLAIN
SELECT *
FROM customers;


-- it takes so much of time to scan one row in the list of row ,so it is a waste of time to look at so much of row
USE exercise_hr;

SELECT *
FROM employees
WHERE employee_id=102;


SELECT *
FROM employees
WHERE first_name ='lex';

SELECT *
FROM employees
WHERE last_name ='De haan';

SELECT COUNT(*) AS 'number of employees'
FROM employees;



-- we have create indexes or primary key (every tables it creates its index respect to primary key)
-- bold primary key 




