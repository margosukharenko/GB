DROP TABLE entity_likes;
DROP TABLE posts;


-- Задание 1. Создание таблицы лайков и постов и заполнение их данными

CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
  
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;
 
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Наполнила таблицу posts через filldb
-- Далее привожу таблицу к нормальному виду

SELECT * FROM posts;

SELECT user_id FROM posts WHERE user_id > 100; -- проверка данных
SELECT community_id FROM posts WHERE community_id > 20; -- проверка данных

UPDATE posts SET updated_at = NOW() WHERE updated_at < created_at;


-- Задание 2. Создать все необходимые внешние ключи и диаграмму отношений

-- Внешние ключи в таблице profiles

SELECT * FROM profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
ALTER TABLE profiles    
	ADD CONSTRAINT profiles_photo_id_fk
    	FOREIGN KEY (photo_id) REFERENCES media(id)
      		ON DELETE SET NULL;
      	
ALTER TABLE profiles 
	ADD CONSTRAINT profiles_status_id_fk
		FOREIGN KEY (status_id) REFERENCES user_statuses(id)
			ON DELETE CASCADE, -- status_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT profiles_city_id_fk
		FOREIGN KEY (city_id) REFERENCES cities(id)
			ON DELETE CASCADE; -- если город пропал, то профиль не должен удалиться 
 
      	
-- Внешние ключи к таблице posts
      	
ALTER TABLE posts 
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE; -- user_id не может быть нулевым, поэтому каскад
			
		
ALTER TABLE posts 
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE SET NULL; -- посты могли редаректнуть из группы, поэтому желательно сохранить пост
		
--  Внешние ключи к таблице messages
		
SELECT * FROM messages;

ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE CASCADE, -- from_user_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE CASCADE; -- to_user_id не может быть нулевым, поэтому каскад
			
--  Внешние ключи к таблице media

SELECT * FROM media;

ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE, -- user_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE CASCADE; -- media_type_id не может быть нулевым, поэтому каскад

--  Внешние ключи к таблице likes

SELECT * FROM likes;

ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE, -- user_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id)
			ON DELETE CASCADE; -- target_type_id не может быть нулевым, поэтому каскад

-- Внешние ключи к таблице friendships

SELECT * FROM friendships;

ALTER TABLE friendships
	ADD CONSTRAINT friendships_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE, -- user_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT friendships_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE, -- friend_id не может быть нулевым, поэтому каскад
  	ADD CONSTRAINT friendships_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
			ON DELETE CASCADE; -- status_id не может быть нулевым, поэтому каскад
			
-- Внешние ключи к таблице friendships

SELECT * FROM entity_attachments;

ALTER TABLE entity_attachments
	ADD CONSTRAINT entity_attachments_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE CASCADE, -- media_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT entity_attachments_entity_type_fk
		FOREIGN KEY (entity_type) REFERENCES entity_types(id)
			ON DELETE CASCADE; -- entity_type не может быть нулевым, поэтому каскад

-- Внешние ключи к таблице communities_users	
	
SELECT * FROM communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE, -- community_id не может быть нулевым, поэтому каскад
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE; -- user_id не может быть нулевым, поэтому каскад

-- Внешние ключи к таблице cities

SELECT * FROM cities;

ALTER TABLE cities MODIFY COLUMN country_id INT UNSIGNED NOT NULL;

ALTER TABLE cities
	ADD CONSTRAINT cities_country_id_fk
		FOREIGN KEY (country_id) REFERENCES countries(id)
			ON DELETE CASCADE; -- country_id не может быть нулевым, поэтому каскад
			
-- Задание 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT IF (
	(SELECT count(*)
	FROM likes
	WHERE user_id in (SELECT user_id FROM profiles WHERE gender = 'm'))
	>
	(SELECT count(*)
	FROM likes
	WHERE user_id in (SELECT user_id FROM profiles WHERE gender = 'f')),
	'm','f'
) as max_gender_like;

-- Задание 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.

SELECT COUNT(*), target_id
FROM likes 
WHERE target_type_id = (SELECT id FROM target_types WHERE name = 'users')
GROUP BY target_id ; -- сколько каждый пользователь получил лайков

SELECT COUNT(*), target_id
FROM likes 
WHERE target_type_id = (SELECT id FROM target_types WHERE name = 'users') AND 
target_id in (
	SELECT user_id 
	FROM ( 
		SELECT p.user_id from profiles p ORDER BY p.birthday DESC LIMIT 10
		) as users_b
)
GROUP BY target_id ; -- сколько лайков получил каждый молодой пользователь из 10

SELECT COUNT(*)
FROM likes 
WHERE target_type_id = (SELECT id FROM target_types WHERE name = 'users') AND 
target_id in (
	SELECT user_id 
	FROM ( 
		SELECT p.user_id from profiles p ORDER BY p.birthday DESC LIMIT 10
		) as users_b
); -- сколько всего лайков получили 10 самых молодых пользователей


SELECT COUNT(*)
FROM likes 
WHERE user_id in (
	SELECT user_id 
	FROM ( 
		SELECT p.user_id from profiles p ORDER BY p.birthday DESC LIMIT 10
		) as users_b
); -- сколько всего лайков получили 10 самых молодых пользователей

-- Задание 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

/*Критерии активности:
- меньше всех отправляют сообщения (именно отправляют, им могут писать, но они не будут читать)
- меньше всех отправляют желание дружить (именно отправляют)
- меньше всех вступают в группы
- меньше всех ставят лайки*/

SELECT CONCAT(first_name, ' ', last_name) as name, 
(SELECT COUNT(from_user_id) FROM messages WHERE from_user_id = u.id) as count_messages,
(SELECT COUNT(user_id) FROM friendships WHERE user_id = u.id) as count_friendship,
(SELECT COUNT(user_id) FROM communities_users WHERE user_id = u.id) as count_communities,
(SELECT COUNT(user_id) FROM likes WHERE user_id = u.id) as count_likes
FROM users u 
ORDER BY count_messages, count_friendship, count_communities, count_likes
LIMIT 10;




