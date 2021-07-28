-- Транзакции, переменные, представления

/*Задание 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. 
Используйте транзакции.*/

START TRANSACTION;

INSERT INTO sample.users (name, birthday_at, created_at, updated_at)
SELECT name, birthday_at, created_at, updated_at FROM shop.users WHERE id = 1;

DELETE FROM shop.users WHERE id = 1;

COMMIT;

/*Задание 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
и соответствующее название каталога name из таблицы catalogs.*/

USE shop;

CREATE VIEW name (products_name, catalogs_name) AS 
SELECT p.name , c.name FROM products p JOIN catalogs c ON p.catalog_id = c.id;

SELECT * FROM name;

/*Задание 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года 
'2018-08-01', '2016-08-04', '2018-08-16' и '2018-08-17'. 
Составьте запрос, который выводит полный список дат за август, 
выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, 
если она отсутствует.*/



CREATE TEMPORARY TABLE august_days (
  id INT,
  dates DATE
);

INSERT INTO august_days(id) VALUES
(0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30);

SELECT * FROM august_days;

UPDATE august_days SET dates = DATE ('2018-08-01' + INTERVAL id DAY);

CREATE TABLE tbl (
	created_at DATE
);

INSERT INTO tbl VALUES ('2018-08-01'), ('2016-08-04'), ('2018-08-16'), ('2018-08-17');

SELECT * FROM tbl;

SELECT ad.dates, IF(tbl.created_at is null, 0, 1) as in_tbl
FROM august_days ad LEFT JOIN tbl ON ad.dates = tbl.created_at;

/*Задание 4(по желанию) Пусть имеется любая таблица с календарным полем created_at. 
Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.*/

CREATE TABLE tbl2 (
	id  SERIAL PRIMARY KEY,
	created_at DATE NOT NULL
);

INSERT INTO tbl2 (created_at) VALUES 
	('2021-07-03'),
	('2021-06-25'),
	('2021-06-12'),
	('2021-06-22'),
	('2021-06-21'),
	('2021-06-24'),
	('2021-07-01'),
	('2021-07-03'),
	('2021-06-09'),
	('2021-06-21');

CREATE VIEW saved AS SELECT * FROM tbl2 ORDER BY created_at DESC LIMIT 5;

SELECT * FROM saved;

DELETE FROM tbl2 WHERE id not in (
	SELECT id FROM saved
);

SELECT * FROM tbl2 ORDER BY created_at DESC;

-- Хранимые процедуры и функции, триггеры

/*Задание 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие,
в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", 
с 00:00 до 6:00 — "Доброй ночи".*/

-- DELIMITER // - не сработал в DBeaver 
-- Поэтому для выполнения процедур выделяла текст процедуры и нажимала Ctrl+Enter

-- Создание процедуры для проверки
CREATE PROCEDURE welcomes (dates TIMESTAMP)
BEGIN 
	IF (HOUR(dates) < 6) THEN SELECT 'Доброй ночи' as welcome;
	ELSEIF (HOUR(dates) < 12) THEN SELECT 'Доброе утро' as welcome;
	ELSEIF (HOUR(dates) < 18) THEN SELECT 'Добрый день' as welcome;
	ELSE SELECT 'Добрый вечер' as welcome;
	END IF;
END;

CALL welcomes ('2021-07-09 01:01:00'); -- проверка верный ли вывод сообщения

-- Создание процедуры для задания
CREATE PROCEDURE welcomes2 ()
BEGIN 
	IF (HOUR(NOW()) < 6) THEN SELECT 'Доброй ночи' as welcome;
	ELSEIF (HOUR(NOW()) < 12) THEN SELECT 'Доброе утро' as welcome;
	ELSEIF (HOUR(NOW()) < 18) THEN SELECT 'Добрый день' as welcome;
	ELSE SELECT 'Добрый вечер' as welcome;
	END IF;
END;

CALL welcomes2;

/*Задание 2.В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. 
Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.*/

SELECT * FROM products;
DESC products;

CREATE TRIGGER two_null BEFORE INSERT ON products
FOR EACH ROW 
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Name и description не могут быть одновременно NULL';
  END IF;
END;

-- Проверка на добавление одного пустого поля
INSERT INTO products (desription) VALUES ('Процессор для настольных персональных компьютеров, основанных на платформе AMD');

-- Проверка на добавление двух пустых полей
INSERT INTO products (price) VALUES (10000);

/*Задание 3(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
Вызов функции FIBONACCI(10) должен возвращать число 55.*/

CREATE FUNCTION fibonacci (number INT)
RETURNS INT DETERMINISTIC
BEGIN 
	DECLARE n INT DEFAULT 0;
	DECLARE x INT DEFAULT 0;
	DECLARE y INT DEFAULT 1;
	DECLARE xy INT DEFAULT 0;
	WHILE n != number DO
		SET xy = x + y;
		SET x = y;
		SET y = xy;
		SET n = n + 1;
	END WHILE;
	RETURN x;
END;

SELECT fibonacci (41);



