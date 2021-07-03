CREATE DATABASE topic7;
USE topic7;

-- Задание 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT * FROM users;
SELECT * FROM orders;

INSERT INTO orders (user_id) VALUES (2), (3), (5), (3), (5);

-- С ипользованием вложенного запроса
SELECT id, name 
FROM users 
WHERE id IN (SELECT DISTINCT user_id FROM orders);

-- С использованием JOIN
SELECT DISTINCT u.id, u.name 
FROM users u JOIN orders o ON u.id = o.user_id;

-- Задание 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT * FROM products;
SELECT * FROM catalogs;

-- Без использования JOIN

SELECT DISTINCT p.name as product, c.name as catalog
FROM products p, catalogs c
WHERE p.catalog_id = c.id;

-- С ипользованием JOIN

SELECT DISTINCT p.name as product, c.name as catalog
FROM products p JOIN catalogs c ON p.catalog_id = c.id;

/*Задание 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов flights с русскими названиями городов.*/

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY, 
	`from` VARCHAR (255) NOT NULL COMMENT 'Город вылета', 
	`to` VARCHAR (255) NOT NULL COMMENT 'Город прилета'
) COMMENT 'Таблица рейсов'; 

DESC flights;

DROP TABLE IF EXISTS cities; 
CREATE TABLE cities (
	label VARCHAR(255) NOT NULL COMMENT 'Английское название города',
	name VARcHAR(255) NOT NULL COMMENT 'Русское название города' 
)  COMMENT 'Название городов';

DESC cities;

INSERT INTO cities VALUES 
	('Moscow', 'Москва'), 
	('Saint Petersburg', 'Сант-Петербург'),
	('Petrozavodsk','Петрозаводск'),
	('Novosibirsk', 'Новосибирск'),
	('Murmansk','Мурманск'),
	('Norilsk','Норильск'),
	('Tula','Тула'),
	('Cheboksary','Чебоксары'),
	('Chita','Чита'),
	('Kazan','Казань'),
	('Yelets','Елец'),
	('Astrakhan','Астрахань');

SELECT * FROM cities;

INSERT INTO flights(`from`, `to`) VALUES 
	((SELECT label FROM cities ORDER BY RAND() LIMIT 1), (SELECT label FROM cities ORDER BY RAND() LIMIT 1)),
	((SELECT label FROM cities ORDER BY RAND() LIMIT 1), (SELECT label FROM cities ORDER BY RAND() LIMIT 1)),
	((SELECT label FROM cities ORDER BY RAND() LIMIT 1), (SELECT label FROM cities ORDER BY RAND() LIMIT 1)),
	((SELECT label FROM cities ORDER BY RAND() LIMIT 1), (SELECT label FROM cities ORDER BY RAND() LIMIT 1)),
	((SELECT label FROM cities ORDER BY RAND() LIMIT 1), (SELECT label FROM cities ORDER BY RAND() LIMIT 1)),
	((SELECT label FROM cities ORDER BY RAND() LIMIT 1), (SELECT label FROM cities ORDER BY RAND() LIMIT 1));

SELECT * FROM flights;

-- Устранение совпадений по городам вылета и прилета
UPDATE flights f SET 
	`to` = (SELECT label FROM cities c WHERE c.label != f.`from` ORDER BY RAND () LIMIT 1)
WHERE f.`from` = f.`to`;

-- Без использования JOIN 
SELECT id, 
	(SELECT name FROM cities WHERE label = f.`from`) as `from`,
	(SELECT name FROM cities WHERE label = f.`to`) as `to`
FROM flights f ;

-- С ипользованием JOIN 

SELECT f.id, c.name as `from` , c2.name as `to`
FROM flights f JOIN cities c ON f.`from` = c.label 
JOIN cities c2 ON f.`to` = c2.label;






