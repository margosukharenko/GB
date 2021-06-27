CREATE DATABASE topic5;
USE topic5;

-- Операторы, фильтрация, сортировка и ограничение. Задание 1

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

DESCRIBE users;

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
  
UPDATE users SET 
created_at = NOW(),
updated_at = NOW(); 

SELECT * FROM users;

-- Операторы, фильтрация, сортировка и ограничение. Задание 2

UPDATE users SET
created_at = '20.10.2017 8:10',
updated_at = '20.10.2017 8:10';

SELECT * FROM users;

UPDATE users SET 
	created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i"),
	updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %k:%i");

ALTER TABLE users MODIFY created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users MODIFY updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

DESCRIBE users;
SELECT * FROM users;

-- Операторы, фильтрация, сортировка и ограничение. Задание 3

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

SELECT * FROM storehouses_products;

INSERT INTO storehouses_products (value) VALUES (0), (2500), (0), (30), (500), (1);

SELECT value FROM storehouses_products ORDER BY IF(value > 0, 0, 1),value ;

-- Операторы, фильтрация, сортировка и ограничение. Задание 4

SELECT name,
CASE 
	WHEN MONTH (birthday_at) = 5 THEN 'may'
	WHEN MONTH (birthday_at) = 8 THEN 'august'
END as month
FROM users WHERE MONTH (birthday_at) = 5 OR MONTH (birthday_at ) = 8; 


-- Операторы, фильтрация, сортировка и ограничение. Задание 5

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
SELECT * FROM catalogs;
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5,1,2);

-- Агрегация данных. Задание 1

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) as avg FROM users;


-- Агрегация данных. Задание 2

SELECT * FROM users;

SELECT DAYNAME(DATE(birthday_at + INTERVAL (YEAR(NOW()) - YEAR(birthday_at)) YEAR)) FROM users;

SELECT COUNT(DAYOFWEEK(DATE(birthday_at + INTERVAL (YEAR(NOW()) - YEAR(birthday_at)) YEAR))) as count,
DAYNAME(DATE(birthday_at + INTERVAL (YEAR(NOW()) - YEAR(birthday_at)) YEAR)) as dayweek
FROM users 
GROUP BY DAYNAME((DATE(birthday_at + INTERVAL (YEAR(NOW()) - YEAR(birthday_at)) YEAR)));

-- Агрегация данных. Задание 3

CREATE TABLE tbl (
  id INT NOT NULL,
  value INT DEFAULT NULL
);
INSERT INTO tbl VALUES (1, 230);
INSERT INTO tbl VALUES (2, NULL);
INSERT INTO tbl VALUES (3, 405);
INSERT INTO tbl VALUES (4, NULL);

SELECT * FROM tbl;

SELECT exp(sum(ln(value))) as exp FROM tbl WHERE value is NOT NULL;







