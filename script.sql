-- Задание 1

SELECT DISTINCT a.district 
FROM address a
WHERE a.district LIKE 'K%a' and a.district NOT LIKE '% %'; -- я тут со столбцом ошибся, поэтому и условие выбора было не верным 

-- Задание 2

SELECT * FROM payment p 
where p.payment_date > CAST('2005-06-15' AS DATE)
and p.payment_date < CAST('2005-06-19' AS DATE)
and p.amount > '10' 
ORDER BY payment_date;

-- Задание 3

SELECT * FROM payment p
ORDER BY p.payment_date DESC 
LIMIT 5;

-- Задание 4

SELECT LOWER(REPLACE(c.first_name, 'LL', 'PP')), LOWER(last_name)
FROM customer c
WHERE first_name = 'Kelly' or first_name = 'Willie';

-- Задание 5

SELECT c.email, SUBSTR(c.email, 2, POSITION('@' IN c.email)-2), RIGHT (c.email, (LENGTH(c.email)-POSITION('@' IN c.email))) from customer c; 



-- Задание 6

SELECT CONCAT(  
UPPER(LEFT(SUBSTR(c.email, 1, POSITION('@' IN c.email)-1), 1)),
'',
LOWER(SUBSTR(c.email, 2, POSITION('@' IN c.email)-1))),
CONCAT (
UPPER(SUBSTR(c.email, POSITION('@' IN c.email)+1, 1)),
'',
LOWER(RIGHT (c.email, (LENGTH(c.email)-POSITION('@' IN c.email)-1))))
FROM customer c;