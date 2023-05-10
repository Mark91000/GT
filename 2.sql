use hr;

-- SELECT sum(salary) from employees where salary > 10000;

-- SELECT sum(
-- 	case
-- 		when salary > 10000 then salary else 0
--     end
-- ) as "Salary Sum" from employees;

-- Select first_name, last_name, salary from employees;

-- select sum(
-- 	case
-- 		when salary > 10000 then salary * 0.07 else salary * 0.05
--     end
-- ) as "Taxes" from employees;

-- select avg(
-- 	case
-- 		when salary <= 10000 then salary else null
--     end
-- ) as "Middle" from employees;

-- Select first_name, last_name, salary, department_id from employees;

-- Select department_id, sum(salary) from employees group by department_id order by department_id;

-- Select department_id, min(
-- 	case
-- 		when salary >= 10000 then 1 else 0
-- 	end
-- ) as "are_everyone_more_10k" from employees group by department_id; 

-- Select department_id, max(salary), min(salary) from employees group by department_id;

select department_id, max(
	case
		when salary >= 10000 then 1 else 0
    end
) as "is_anyone_more_10k" from employees group by department_id order by department_id;


use learn;
insert into products (title,price,discount) values
('велосипед',50000,0.9),
('ролики',1500,0.1),
('лыжи',2500,null),
('самокат',30000,0.8),
('сноуборд',30000,0.9),
('санки',1000,null);
select * from products;

update products 
set price = 5300
where title like 'лыжи';
select * from products;

use learn;
select *
from products
where price > 5000;

create table expensive as
select * from products
where price > 5000;
select * from expensive;

create table tmp as
select
title,
price
from products
where 1 = 0;
select * from tmp;
 insert into tmp( title, price)
 select 
 title,
 price
 from expensive;
 select * from tmp;
 -- USE learn;

-- INSERT INTO users VALUES ('Vazgen', 'Dav', 22);
-- commit;
-- SELECT * FROM users;




-- USE learn;
-- SET sql_safe_updates = 0; -- Для удаления данных
-- DELETE FROM 
--  products
-- WHERE title LIKE 'лыжи';


-- DELETE FROM products;





-- insert into products (title,price,discount) values
-- ('велосипед',50000,0.9),
-- ('ролики',1500,0.1),
-- ('лыжи',2500,null),
-- ('самокат',30000,0.8),
-- ('сноуборд',30000,0.9),
-- ('санки',1000,null);



-- TRUNCATE TABLE products;

-- SELECT * FROM products;



-- USE learn;
-- UPDATE products -- говорим в какой таблице делать делать изменение 
-- SET price = 3500 --  какое поле менять и на какую величину
-- WHERE TITLE LIKE 'лыжи'; -- в какой части менять 


-- UPDATE products
-- SET TITLE = 'Дорогой продукт'
-- WHERE price = 50000;


-- UPDATE products
-- SET discount = 1
-- WHERE discount IS NULL;


-- UPDATE products
-- SET price = price + 20000
-- WHERE title = 'самокат';


-- UPDATE products
-- SET title = concat(title, ' красивый')
-- WHERE title = 'самокат';

-- SELECT * FROM products;

USE learn;
-- SELECT * 
--  FROM products
-- WHERE price > 5000;

-- CREATE TABLE expensive_products AS
--  SELECT * 
--   FROM products
--  WHERE price > 5000;


-- SELECT * FROM expensive_products;


-- Добавление данных
 
CREATE TABLE tmp_table AS
 SELECT 
  title,
        price
 FROM products
  WHERE 1 = 0; -- Делается для того чтобы сделать копию таблицы (структура), он будет пуста
 
    
SELECT * FROM tmp_table;  -- Здесь таблица полностью пуста


INSERT INTO tmp_table (title,price)
 SELECT
  title,
        price
FROM expensive_products; -- Здесь мы добавили в раблицу tmp_table все элементы из таблицы expensive_products


SELECT * FROM tmp_table; -- Здесь уже в таблице есть данные

-- Добавьте в таблицу goods 4 товара
-- Увеличьте цену велосипеда на 10000
-- Создать новую таблицу, которая выводит только те товары, которые стоят меньше 10000
