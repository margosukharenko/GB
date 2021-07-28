-- Задание 1. Проанализировать, какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

/*Таблица users. На email и phone автоматически установлен индекс. 
Часто в БД ищу по фамилии, поэтому индекс на фамилию + составной индекс на фамилию и имя*/

DESC users;

CREATE INDEX users_last_name_idx ON users (last_name);
CREATE INDEX users_last_name_first_name_idx ON users (last_name, first_name);

/*Таблица user_statuses. Думаю, что на нее индексы не нужны
 *Таблица target_types. Думаю, что на нее индексы не нужны.*/

/*Таблица profiles. На photo_id, status_id, city_id автоматически установлен индекс
Индекс на поле birthday*/

DESC profiles;

CREATE INDEX profiles_birthday_idx ON profiles (birthday);

/*Таблица posts. На user_id и community_id автоматически установлен индекс
 Индекс должен быть на media_id. Ранее забыла создать форен ключ, поэтому создам его */

DESC posts;

ALTER TABLE posts 
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE CASCADE; 
		
/*Таблица message. На from_user_id и to_user_id автоматически установлен индекс. Думаю, что другие индексы не нужны
 *Таблица media_types. На name автоматически установлен индекс. Думаю, что другие индексы не нужны */
		

/*Таблица media. На user_id и media_type_id автоматически установлен индекс
 Думаю имеет место индекс на filename  */

DESC media;

CREATE INDEX media_filename_idx ON media(filename);
		
/*Таблица likes. На user_id и target_type_id автоматически установлен индекс
 Думаю имеет место составной индекс на target_id и target_type_id  */
		
DESC likes;

CREATE INDEX likes_target_id_target_type_id_idx ON likes (target_id, target_type_id);

/*Таблица friendships. На friend_id, user_id и status_id автоматически установлен индекс. Думаю, что другие индексы не нужны
 *Таблица friendship_statuses. На name автоматически установлен индекс. Думаю, что другие индексы не нужны
 *Таблица entity_types. Думаю, что на нее индексы не нужны*/


/*Таблица entity_attachments. На media_id и entity_type автоматически установлен индекс
 Думаю имеет место составной индекс на entity_id и entity_type  */

DESC entity_attachments;

CREATE INDEX entity_attachments_entity_id_entity_type_idx ON entity_attachments(entity_id, entity_type);

/*Таблица countries. На name автоматически установлен индекс. Думаю, что другие индексы не нужны
 *Таблица communities_users. На community_id и user_id автоматически установлен индекс. Думаю, что другие индексы не нужны
 *Таблица communities. На name автоматически установлен индекс. Думаю, что другие индексы не нужны
 *Таблица cities. На country_id и name автоматически установлен индекс. Думаю, что другие индексы не нужны*/

/*Задание 2 на оконные функции
Построить запрос, который будет выводить следующие столбцы:
* имя группы
* среднее количество пользователей в группах
* самый молодой пользователь в группе
* самый старший пользователь в группе
* общее количество пользователей в группе
* всего пользователей в системе
* отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100*/
 
 
SELECT DISTINCT 
	c.name as name_communities, -- имя группы
	AVG(cu.user_id) OVER cuc as avg_users, -- среднее кол-во пользователей в группе
	FIRST_VALUE (CONCAT(u.last_name, ' ', u.first_name)) OVER (PARTITION BY cu.community_id ORDER BY p.birthday DESC) as min, -- самой молодой пользователь в группе
	FIRST_VALUE (CONCAT(u.last_name, ' ', u.first_name)) OVER (PARTITION BY cu.community_id ORDER BY p.birthday) as max, -- самый старшего пользователя
	COUNT(cu.user_id) OVER cuc as count_users, -- общее кол-во пользователей в группе
	COUNT(cu.user_id) OVER () as total_users, -- всего пользователей в системе
	COUNT(cu.user_id) OVER cuc / COUNT(cu.user_id) OVER () * 100 as percent -- отношение в процентах
FROM communities c 
JOIN communities_users cu ON c.id = cu.community_id 
JOIN profiles p ON cu.user_id = p.user_id
JOIN users u ON cu.user_id = u.id -- не уверена, что надо писать LEFT и RIGHT так как есть ON и внешние ключи
WINDOW cuc AS (PARTITION BY cu.community_id);
