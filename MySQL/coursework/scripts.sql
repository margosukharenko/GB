SELECT * FROM pick_up_point_limits pupl;

CREATE TRIGGER limit_min_max_insert BEFORE INSERT ON pick_up_point_limits
FOR EACH ROW 
BEGIN 
	IF NEW.min_count IS NULL AND NEW.max_count IS NULL THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Должен быть установлен хотя бы один лимит';
	END IF;
END;

CREATE TRIGGER limit_min_max_update BEFORE UPDATE ON pick_up_point_limits
FOR EACH ROW 
BEGIN 
	IF NEW.min_count IS NULL AND NEW.max_count IS NULL THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Должен быть установлен хотя бы один лимит';
	END IF;
END;

-- Выдача подарка

 SELECT * FROM given_gifts;

-- На вход подается пукнт выдачи, откуда списывается подарок, подарок, который выдается и пользователь, которому выдается порадок. Дата выдачи = NOW()
-- Необходимо делать проверку, есть ли нужное кол-во в пункте выдачи
-- Сделаю с помощью транзакции. В пункте выдачи списывается 1 шт. В таблице given_gifts появляется выданый заказ

SELECT COUNT(id) > 0 FROM quantity_gifts qg WHERE gift_id = 4 AND pick_up_point_id = 6; -- проверка на существование записи
SELECT quantity > 0 FROM quantity_gifts qg WHERE gift_id = 4 AND pick_up_point_id = 6; -- проверка на количество
SELECT id = 10 FROM users u WHERE deleted_at IS NULL and id = 10; -- проверка на существование и активность пользователя

START TRANSACTION; 
	UPDATE quantity_gifts SET quantity = quantity - 1 
		WHERE gift_id = 4 AND pick_up_point_id = 6;
	INSERT INTO given_gifts (gift_id, pick_up_point_id, user_id, date_of_issue) VALUES
		(4, 6, 10, NOW());
COMMIT;

/*CREATE ALGORITHM = TEMPTABLE VIEW verification(id,quantity) as SELECT id,quantity FROM quantity_gifts WHERE gift_id = 4 AND pick_up_point_id = 6;
SELECT * FROM verification;
DROP VIEW verification; создание представления для упрощения проверки*/


CREATE PROCEDURE issue (issue_gift INT, issue_pick_up_point INT, issue_user INT)
BEGIN 
	IF 
		(SELECT COUNT(id) > 0 FROM quantity_gifts WHERE gift_id = issue_gift AND pick_up_point_id = issue_pick_up_point) AND 
		(SELECT quantity > 0 FROM quantity_gifts WHERE gift_id = issue_gift AND pick_up_point_id = issue_pick_up_point) AND 
		(SELECT id = issue_user FROM users WHERE deleted_at IS NULL and id = issue_user)
	THEN 
		START TRANSACTION; 
		UPDATE quantity_gifts SET quantity = quantity - 1 
			WHERE gift_id = issue_gift AND pick_up_point_id = issue_pick_up_point;
		INSERT INTO given_gifts (gift_id, pick_up_point_id, user_id, date_of_issue) VALUES
			(issue_gift, issue_pick_up_point, issue_user, NOW());
		SELECT 'Успешно';
		COMMIT;
	ELSE 
		SELECT 'Нет подарка или пользователя';
	END IF;
END;

CALL issue(4,6,10);

SELECT @user_inf0 := 10;

-- Вывод блока и практики сотрудника

SELECT d.name as 'Практика', d2.name as 'Блок'
FROM departments d LEFT JOIN departments d2 ON d.parent_department_id = d2.id
WHERE d.id = (SELECT department_id FROM users WHERE id = @user_inf0);

-- Вывод информации по сотруднику


SELECT 
	CONCAT(last_name, ' ', name, ' ', patronymic) as 'ФИО', 
	DATE_FORMAT(birthday, '%d.%m.%Y') as 'День рождения',
	(SELECT d.name
	FROM departments d LEFT JOIN departments d2 ON d.parent_department_id = d2.id
	WHERE d.id = (SELECT department_id FROM users WHERE id = @user_inf0)) as 'Практика',
	(SELECT d2.name
	FROM departments d LEFT JOIN departments d2 ON d.parent_department_id = d2.id
	WHERE d.id = (SELECT department_id FROM users WHERE id = @user_inf0)) as 'Блок'
FROM users 
WHERE id = @user_inf0;

-- Вывод установленных лимитов для пункта выдачи

CREATE FUNCTION pupl_info (value INT)
RETURNS INT DETERMINISTIC
BEGIN
	SET @pick_up_point_info := value;
	RETURN @pick_up_point_info;
END;

CREATE ALGORITHM = TEMPTABLE VIEW pupl AS SELECT * FROM pick_up_point_limits WHERE pick_up_point_id = pupl_info(6);

SELECT * from pick_up_point_limits;

SELECT min_count as 'Суммарный минимальный лимит' FROM pupl WHERE gift_id is null;
SELECT max_count as 'Суммарный максимальный лимит' FROM pupl WHERE gift_id is null;
SELECT 
	(SELECT name FROM gifts WHERE gifts.id = pupl.gift_id) as 'Подарок',
	min_count as 'Минимальный лимит' 
FROM pupl WHERE min_count is not null AND gift_id is not null;
SELECT 
	(SELECT name FROM gifts WHERE gifts.id = pupl.gift_id) as 'Подарок',
	min_count as 'Максимальный лимит' 
FROM pupl WHERE max_count is not null AND gift_id is not null;

-- Вывод ответственных по пункту выдачи

CREATE ALGORITHM = TEMPTABLE VIEW resp AS SELECT * FROM responsables WHERE pick_up_point_id = pupl_info(6);

SELECT * FROM resp;

SELECT 
	(SELECT name FROM pick_up_points pup WHERE pup.id = resp.pick_up_point_id) as 'Пункт выдачи',
	CONCAT (
		(SELECT last_name FROM users WHERE users.id = resp.user_id),
		' ',
		(SELECT name FROM users WHERE users.id = resp.user_id),
		' ',
		(SELECT patronymic FROM users WHERE users.id = resp.user_id)
	) as 'ФИО ответственного'
FROM resp;

-- Сколько заказов было сделано для пункта выдачи

SELECT 
	pup.name,
	COUNT(o.order_id)
FROM pick_up_points pup LEFT JOIN orders o ON pup.id = o.pick_up_point_id
GROUP BY pup.id;

-- Построение отчета "Информация по выданным подаркам"
/*В отчете находится следующая информация:
* Пункт выдачи
* Тип выданного подарка
* Сотрудник, которому выдали подарок
* Блок сотрудника, которому выдали подарок
* Практика сотрудника, которому выдали подарок
* Дата выдачи подарка*/

SELECT 
	pup.name as 'Пункт выдачи',
	g.name as 'Тип выданного подарка',
	CONCAT (u.last_name, ' ', u.name, ' ', u.patronymic) as 'Кому выдали подарок',
	dd.name as 'Блок',
	d.name as 'Практика',
	gg.date_of_issue as 'Дата выдачи'
FROM given_gifts gg LEFT JOIN pick_up_points pup ON gg.pick_up_point_id = pup.id 
LEFT JOIN gifts g ON gg.gift_id = g.id 
LEFT JOIN users u ON gg.user_id = u.id
LEFT JOIN departments d ON u.department_id = d.id 
LEFT JOIN departments dd ON dd.id = d.parent_department_id 
ORDER BY gg.date_of_issue DESC;

-- Построение отчета "Информация по пунктам выдачи"
/*В отчете находится следующая информация:
* Пункт выдачи
* Тип подарка
* Кол-во подарков в наличии*/

SELECT 
	pup.name as 'Пункт выдачи',
	g.name as 'Подарок',
	qg.quantity
FROM quantity_gifts qg LEFT JOIN pick_up_points pup ON qg.pick_up_point_id = pup.id 
LEFT JOIN gifts g ON qg.gift_id = g.id
ORDER BY pup.name, g.name, qg.quantity ;

-- Вывод следующей информации
-- Пункт выдачи
-- Товар с максимальным количеством
-- Товар с минимальным количеством
-- Всего подарков в пункте выдачи
-- Всего подарков
-- Доля подарков в пункте выдачи

SELECT DISTINCT 
	pup.name as 'Пункт выдачи',
	FIRST_VALUE (g.name) OVER (PARTITION BY qg.pick_up_point_id ORDER BY qg.quantity DESC) as max_count_gift,
	FIRST_VALUE (g.name) OVER (PARTITION BY qg.pick_up_point_id ORDER BY qg.quantity) as min_count_gift,
	SUM(qg.quantity) OVER (PARTITION BY qg.pick_up_point_id) as quantity,
	SUM(qg.quantity) OVER () as sum_gifts,
	FLOOR (SUM(qg.quantity) OVER (PARTITION BY qg.pick_up_point_id) / SUM(qg.quantity) OVER () * 100) as pescent
FROM quantity_gifts qg LEFT JOIN pick_up_points pup ON qg.pick_up_point_id = pup.id 
LEFT JOIN gifts g ON qg.gift_id = g.id;














