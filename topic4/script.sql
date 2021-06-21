use vk;

DESC profiles;

-- Таблица статусов пользователей
CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название статуса (уникально)",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник статусов пользователей";

-- Заполнение таблицы user_statuses
INSERT INTO user_statuses (name) VALUES ('single'),('married');
SELECT * FROM user_statuses;

-- Модификация таблицы profiles
ALTER TABLE profiles RENAME COLUMN status TO status_id;
DESC profiles;
SELECT * FROM profiles;
UPDATE profiles SET status_id = NULL; 
ALTER TABLE profiles MODIFY COLUMN status_id INT UNSIGNED;

-- Просмотр таблицы countries (не редактирую данные)
SELECT * FROM countries;

-- Изменение данных в таблице cities
SELECT * FROM cities;
UPDATE cities 
  SET country_id = (SELECT id FROM countries ORDER BY RAND() LIMIT 1);
-- В основном использовала данную структуру обновления таблиц. При таком подходе не надо знать начало и конец данных

/*Изменение данных в таблице profiles
Поле gender изначально было заполнено правильно*/
SELECT * FROM profiles;
UPDATE profiles 
  SET status_id = (SELECT id FROM user_statuses ORDER BY RAND() LIMIT 1);
UPDATE profiles 
  SET city_id = (SELECT id FROM cities ORDER BY RAND() LIMIT 1);
UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE profiles 
  SET photo_id = (SELECT id FROM media WHERE media_type_id = 1 ORDER BY RAND() LIMIT 1);

-- Изменение данных в таблице users
SELECT * FROM users;
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;

-- Изменение данных в таблице messages
SELECT * FROM messages;
UPDATE messages m SET 
  m.from_user_id = (SELECT id FROM users u ORDER BY RAND() LIMIT 1),
  m.to_user_id = (SELECT id FROM users u WHERE u.id != m.from_user_id ORDER BY RAND() LIMIT 1);
SELECT * FROM messages WHERE from_user_id = to_user_id; -- Проверка на отправку сообщения самому себе

-- Изменение данных в таблице media_types
SELECT * FROM media_types;
DELETE FROM media_types WHERE name = 'GIF';

-- Изменение данных в таблице media
SELECT * FROM media;
UPDATE media SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE media SET media_type_id = (SELECT id FROM media_types ORDER BY RAND() LIMIT 1) WHERE media_type_id = 2;
SELECT * FROM media WHERE media_type_id = 2; --  Проверка на сохранение id из media_types, которое удалила
UPDATE media 
  SET user_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1);
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;
UPDATE media m SET filename = CONCAT(
  'http://dropbox.net/vk/',
  filename,
  (SELECT last_name FROM users ORDER BY RAND() LIMIT 1),
  '.',
   (SELECT 
       (CASE WHEN m.media_type_id = 1 THEN "jpg"
             WHEN m.media_type_id = 3 THEN "docx"
             WHEN m.media_type_id = 4 THEN "mp3"
             WHEN m.media_type_id = 5 THEN "avi"
       END))
 ); -- Заполнение расширения в соответствии с типами

UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  
ALTER TABLE media MODIFY COLUMN metadata JSON;
DESC media;

-- Изменение данных в таблице friendship
SELECT * FROM friendship;
RENAME TABLE friendship TO friendships;
SELECT * FROM friendships;
UPDATE friendships f SET 
  f.user_id = (SELECT id FROM users u ORDER BY RAND() LIMIT 1),
  f.friend_id = (SELECT id FROM users u WHERE u.id != f.user_id ORDER BY RAND() LIMIT 1);
SELECT * FROM friendships WHERE user_id = friend_id; -- Проверка на отправку дружбы самому себе

-- Изменение данных в таблице friendship_statuses
SELECT * FROM friendship_statuses;
UPDATE friendship_statuses SET name = CASE 
 WHEN name = 'Ожидает' THEN 'Expects'
 WHEN name = 'Отклонено' THEN 'Rejected'
 WHEN name = 'Принято' THEN 'Accepted'
END ;

-- Изменение данных в таблице communities
SELECT * FROM communities;
DELETE FROM communities WHERE id > 20;
UPDATE communities SET updated_at = NOW() WHERE updated_at < created_at;

-- Изменение данных в таблице communities_users
SELECT * FROM communities_users;
UPDATE communities_users 
  SET user_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1),
  community_id = (SELECT id FROM communities ORDER BY RAND() LIMIT 1);

-- Просмотр таблицы entity_type
SELECT * FROM entity_types;

-- Изменение данных в таблице entity_likes
SELECT * FROM entity_likes;
UPDATE entity_likes SET 
  	entity_id = FLOOR(1 + RAND() * 100),
  	user_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1);
-- Проставление лайков только к постам, медиа или пользователям
UPDATE entity_likes SET entity_type = (SELECT ELT(FLOOR(1 + RAND() * 3), 1,2,4)); 
  
-- Изменение данных в таблице entity_attachments  
SELECT * FROM entity_attachments;
UPDATE entity_attachments SET 
	media_id = (SELECT id FROM media ORDER BY RAND() LIMIT 1),
  	entity_id = FLOOR(1 + RAND() * 100);
-- Вложения только к постам или сообщениям
UPDATE entity_attachments SET entity_type = (SELECT ELT(FLOOR(1 + RAND() * 2), 2,5));
  
-- Изменение данных в таблице entity_attachments
SELECT * FROM posts;
UPDATE posts SET
	to_entity_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1),
	created_by = (SELECT id FROM users ORDER BY RAND() LIMIT 1);
-- Посты только у пользователя или группы
UPDATE posts SET to_entity_type = (SELECT ELT(FLOOR(1 + RAND() * 2), 1,3));
-- Проставления наличия вложения к посту, если вложение есть в таблице entity_attachments
UPDATE posts SET is_attachments = 0;
UPDATE posts SET
	is_attachments = 1 WHERE id in (
		SELECT entity_id FROM entity_attachments WHERE entity_type = 2
	);
	






