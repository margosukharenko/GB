-- Таблицы создавала по одной, чтобы заполнять данными по ходу. Где-то заполняла самостоятельно, где-то с использованием filldb

INSERT INTO department_types (name) VALUES ('block'), ('practice'), ('region'), ('office');

INSERT INTO departments (type_id, name, parent_department_id) VALUES 
	(1, 'Блок Бэкофис', NULL),
	(1, 'Блок комплексного сервиса', NULL), 
	(1, 'Блок BI', NULL), 
	(2, 'Кадровая администрация', 1),
	(2, 'Корпоративные порталы', 1),
	(2, 'Внутренние коммуникации', 1),
	(2, 'Администрация блока', 2),
	(2, 'Практика облачных решений', 2),
	(2, 'Практика по вопросам миграции', 2),
	(2, 'Практика внедрения', 2),
	(2, 'Администрация блока', 3),
	(2, 'Финансовые технологии', 3),
	(2, 'Инновационные технологии', 3),
	(2, 'Цифровые приложения', 3),
	(3, 'Санкт-Петербург', NULL),
	(3, 'Москва', NULL),
	(3, 'Сочи', NULL),
	(4, 'Невский проспект', 15),
	(4, 'Васильевский остров', 15),
	(4, 'Савеловская', 16),
	(4, 'Дмитровская', 16),
	(4, 'Чеховская', 16),
	(4, 'Красная поляна', 17);

INSERT INTO roles (name) VALUES ('bg_admin'), ('bg_responsable');

INSERT INTO users_roles VALUES 
	(1, (SELECT id FROM users ORDER BY RAND() LIMIT 1)), 
	(1, (SELECT id FROM users ORDER BY RAND() LIMIT 1)), 
	(2, (SELECT id FROM users ORDER BY RAND() LIMIT 1)), 
	(2, (SELECT id FROM users ORDER BY RAND() LIMIT 1)), 
	(2, (SELECT id FROM users ORDER BY RAND() LIMIT 1)), 
	(2, (SELECT id FROM users ORDER BY RAND() LIMIT 1)),
	(2, (SELECT id FROM users ORDER BY RAND() LIMIT 1)), 
	(2, (SELECT id FROM users ORDER BY RAND() LIMIT 1));

INSERT INTO gift_statuses(name) VALUES ('active'), ('obsolete'), ('archive');

INSERT INTO gifts (name, status_id) VALUES
	('Рюкзак', 1),
	('Сумка', 1),
	('Шарф', 2),
	('Кружка', 1),
	('Кофта', 2);

INSERT INTO pick_up_points (name, department_id) VALUES 
	('Проходная 1', (SELECT id FROM departments WHERE type_id = (SELECT id FROM department_types WHERE name = 'office') ORDER BY RAND() LIMIT 1)),
	('Проходная 4', (SELECT id FROM departments WHERE type_id = (SELECT id FROM department_types WHERE name = 'office') ORDER BY RAND() LIMIT 1)),
	('Этаж 5', (SELECT id FROM departments WHERE type_id = (SELECT id FROM department_types WHERE name = 'office') ORDER BY RAND() LIMIT 1)),
	('Этаж 3', (SELECT id FROM departments WHERE type_id = (SELECT id FROM department_types WHERE name = 'office') ORDER BY RAND() LIMIT 1)),
	('Проходная 7', (SELECT id FROM departments WHERE type_id = (SELECT id FROM department_types WHERE name = 'office') ORDER BY RAND() LIMIT 1)),
	('Главный склад', (SELECT id FROM departments WHERE type_id = (SELECT id FROM department_types WHERE name = 'office') ORDER BY RAND() LIMIT 1)),);

	
INSERT INTO responsables (pick_up_point_id, user_id) VALUES
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT user_id FROM users_roles WHERE role_id = (SELECT id FROM roles WHERE name='bg_responsable') ORDER BY RAND() LIMIT 1));

INSERT INTO given_gifts (gift_id, pick_up_point_id, user_id ,date_of_issue) VALUES 
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	),
	(
		(SELECT id FROM gifts ORDER BY RAND () LIMIT 1),
		(SELECT id FROM pick_up_points ORDER BY RAND () LIMIT 1),
		(SELECT id FROM users ORDER BY RAND () LIMIT 1),
		(SELECT TIMESTAMP('2021-07-17 17:30:00') - INTERVAL FLOOR (RAND()*365) DAY)
	);

INSERT INTO quantity_gifts (gift_id, pick_up_point_id, quantity) VALUES
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50))),
	((SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*50)));

INSERT INTO pick_up_point_limits (pick_up_point_id, gift_id, min_count) VALUES
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(10-5))+5)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(10-5))+5)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(10-5))+5)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(10-5))+5)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(10-5))+5));

INSERT INTO pick_up_point_limits (pick_up_point_id, gift_id, max_count) VALUES
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(100-50))+50)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(100-50))+50)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(100-50))+50)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(100-50))+50)),
	((SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(100-50))+50));

INSERT INTO order_statuses (name) VALUES 
	('Выполнен'), ('Отменен'), ('Ожидает согласования'), ('Ожидает поступления');

INSERT INTO orders(order_id, gift_id, pick_up_point_id, quantity, status_id, created_by) VALUES
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1)),
	((SELECT FLOOR (RAND()*(10-1))+1), (SELECT id FROM gifts ORDER BY RAND() LIMIT 1), (SELECT id FROM pick_up_points ORDER BY RAND() LIMIT 1), (SELECT FLOOR (RAND()*(50-30))+30), (SELECT id FROM order_statuses ORDER BY RAND() LIMIT 1), (SELECT user_id FROM responsables ORDER BY RAND() LIMIT 1));
	

