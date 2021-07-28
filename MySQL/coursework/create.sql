CREATE DATABASE birthday_gifts;

USE birthday_gifts;

CREATE TABLE department_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR (100) COMMENT "Название типа подразделения"
) COMMENT "Типы подразделений (блок/практика/регион/офис и тд)";


CREATE TABLE departments (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	type_id INT UNSIGNED NOT NULL COMMENT "Тип подразделения (блок/практика/регион/офис и тд)",
	name VARCHAR(255) COMMENT "Название подразделения",
	parent_department_id INT UNSIGNED COMMENT "Родитель подразделения",
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	deleted_at DATETIME,
	CONSTRAINT departments_type_id_fk
    	FOREIGN KEY (type_id)  REFERENCES department_types (id) 
    		ON DELETE CASCADE
) COMMENT "Подразделения";

CREATE INDEX departments_parent_department_id_idx ON departments (parent_department_id);

CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	last_name VARCHAR(255) NOT NULL COMMENT "Фамилия",
	name VARCHAR (255) NOT NULL COMMENT "Имя",
	patronymic VARCHAR(255) COMMENT "Отчество. Человек может быть без отчества",
	email VARCHAR(255) NOT NULL,
	birthday DATE NOT NULL COMMENT "День рождения",
	department_id INT UNSIGNED COMMENT "Подразделение, в котором находится сотрудник",
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	deleted_at DATETIME,
	CONSTRAINT users_department_id_fk
    	FOREIGN KEY (department_id) REFERENCES departments (id) 
    		ON DELETE SET NULL
) COMMENT "Пользователи";

CREATE INDEX users_last_name_idx ON users (last_name);
CREATE INDEX users_last_name_name_idx ON users (last_name, name);
CREATE INDEX users_birthday_idx ON users(birthday);
CREATE INDEX users_email_idx ON users(email);

CREATE TABLE roles (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR (100) NOT NULL COMMENT "Название роли"
) COMMENT "Роли";

CREATE TABLE users_roles (
	role_id INT UNSIGNED NOT NULL COMMENT "Роль",
	user_id INT UNSIGNED NOT NULL COMMENT "Пользователь, которому присвоена роль",
	PRIMARY KEY (role_id, user_id),
	CONSTRAINT users_roles_role_id_fk 
    	FOREIGN KEY (role_id)  REFERENCES roles (id) 
    		ON DELETE CASCADE,
    CONSTRAINT users_roles_user_id_fk
    	FOREIGN KEY (user_id)  REFERENCES users (id) 
    		ON DELETE RESTRICT
) COMMENT "Роли пользователей";

CREATE TABLE gift_statuses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(100) NOT NULL COMMENT "Название статуса"
) COMMENT "Статусы подарков (новый, устарел, в архиве)";

CREATE TABLE gifts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR (255) NOT NULL COMMENT "Название подарка",
	status_id INT UNSIGNED COMMENT "Статус подарка (активный, устаревший, в архиве)",
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT gifts_status_id_fk
    	FOREIGN KEY (status_id) REFERENCES gift_statuses (id) 
    		ON DELETE SET NULL
) COMMENT "Разновидности подарков";

CREATE TABLE pick_up_points (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(255) COMMENT "Название пункта выдачи",
	department_id INT UNSIGNED COMMENT "Офис, в котором находится пункт выдачи",
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	delete_at DATETIME,
	CONSTRAINT pick_up_points_department_id_fk
    	FOREIGN KEY (department_id) REFERENCES departments (id) 
    		ON DELETE RESTRICT 
) COMMENT "Пункты выдачи. В одном офисе может быть несколько";

CREATE TABLE responsables (
	pick_up_point_id INT UNSIGNED NOT NULL COMMENT "Пункт выдачи",
	user_id INT UNSIGNED NOT NULL COMMENT "Отвественный за пункт выдачи",
	deleted_at DATETIME,
	PRIMARY KEY (pick_up_point_id, user_id),
	CONSTRAINT responsables_pick_up_point_id_fk
    	FOREIGN KEY (pick_up_point_id) REFERENCES pick_up_points (id) 
    		ON DELETE CASCADE,
    CONSTRAINT responsables_user_id_fk
    	FOREIGN KEY (user_id) REFERENCES users (id) 
    		ON DELETE RESTRICT 
) COMMENT "Ответственные за пункты выдачи";

CREATE TABLE given_gifts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
	gift_id INT UNSIGNED NOT NULL COMMENT "Какой был выдан подарок",
	pick_up_point_id INT UNSIGNED NOT NULL COMMENT "Откуда был выдан подарок",
	user_id INT UNSIGNED NOT NULL COMMENT "Кому был выдан подарок",
	date_of_issue DATETIME NOT NULL COMMENT "Когда был выдан подарок (дата списания)",
	CONSTRAINT given_gifts_gift_id_fk
    	FOREIGN KEY (gift_id) REFERENCES gifts (id) 
    		ON DELETE RESTRICT,
    CONSTRAINT given_gifts_pick_up_point_id_fk
    	FOREIGN KEY (pick_up_point_id)  REFERENCES pick_up_points (id) 
    		ON DELETE RESTRICT,
    CONSTRAINT given_gifts_user_id_fk
    	FOREIGN KEY (user_id) REFERENCES users (id) 
    		ON DELETE RESTRICT
) COMMENT "История выдачи подарков";

CREATE INDEX given_gifts_date_of_issue_idx ON given_gifts (date_of_issue);

CREATE TABLE quantity_gifts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	gift_id INT UNSIGNED NOT NULL COMMENT "Подарок",
	pick_up_point_id INT UNSIGNED NOT NULL COMMENT "Пункт выдачи",
	quantity INT UNSIGNED NOT NULL COMMENT "Количество определенного подарка",
	CONSTRAINT quantity_gifts_gift_id_fk
    	FOREIGN KEY (gift_id) REFERENCES gifts (id) 
    		ON DELETE RESTRICT,
    CONSTRAINT quantity_gifts_pick_up_point_id_fk
    	FOREIGN KEY (pick_up_point_id) REFERENCES pick_up_points (id) 
    		ON DELETE RESTRICT
) COMMENT "Количество подарков в наличие в пункте выдачи";

ALTER TABLE quantity_gifts ADD UNIQUE (gift_id,pick_up_point_id);
CREATE INDEX quantity_gifts_gift_id_idx ON quantity_gifts(gift_id);

CREATE TABLE pick_up_point_limits (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	pick_up_point_id INT UNSIGNED NOT NULL COMMENT "Пункт выдачи",
	gift_id INT UNSIGNED COMMENT "Подарок (может быть NULL, если лимит установлен на весь пункт выдачи, т.е. на всю сумму имеющихся подарков",
	min_count INT UNSIGNED COMMENT "Минимальный лимит. Нужен для оповещения заканчивающихся подарков",
	max_count INT UNSIGNED COMMENT "Максимальный лимит. Больше данного лимита нельзя заказывать подарок указанного вида и вообще нельзя заказывать подарки, если лимит на весь пункт выдачи",
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT pick_up_point_limits_pick_up_point_id_fk
    	FOREIGN KEY (pick_up_point_id) REFERENCES pick_up_points (id) 
    		ON DELETE RESTRICT,
    CONSTRAINT pick_up_point_limits_gift_id_fk
    	FOREIGN KEY (gift_id) REFERENCES gifts (id) 
    		ON DELETE RESTRICT
) COMMENT "Установленные лимиты в пункте выдачи";

ALTER TABLE pick_up_point_limits ADD UNIQUE (pick_up_point_id,gift_id);
CREATE INDEX pick_up_point_pick_up_point_id_idx ON pick_up_point_limits (pick_up_point_id);

CREATE TABLE order_statuses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR (100) NOT NULL COMMENT "Название статуса заказа"
) COMMENT "Статусы заказов";

CREATE TABLE orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	order_id INT UNSIGNED NOT NULL COMMENT "Номер заказа. В одном заказе может быть несколько подарков",
	gift_id INT UNSIGNED NOT NULL COMMENT "Подарок",
	pick_up_point_id INT UNSIGNED NOT NULL COMMENT "Пункт выдачи, для которого заказ",
	quantity INT UNSIGNED NOT NULL COMMENT "Количество подарков",
	status_id INT UNSIGNED NOT NULL COMMENT "Статус заказа",
	created_by INT UNSIGNED NOT NULL, 
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT orders_gift_id_fk
    	FOREIGN KEY (gift_id) REFERENCES gifts (id) 
    		ON DELETE RESTRICT,
    CONSTRAINT orders_pick_up_point_id_fk
    	FOREIGN KEY (pick_up_point_id) REFERENCES pick_up_points (id) 
    		ON DELETE RESTRICT,
    CONSTRAINT orders_status_id_fk
    	FOREIGN KEY (status_id) REFERENCES order_statuses (id) 
    		ON DELETE RESTRICT
) COMMENT "Заказы на подарки для пополнения количества подарков в пунктах выдачи";

CREATE INDEX orders_order_id_idx ON orders (order_id);






















