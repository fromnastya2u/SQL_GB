DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
	firstname VARCHAR (100),
	lastname VARCHAR (100) COMMENT 'какой-то комментарий',
	email VARCHAR (100) UNIQUE,
	password_hash VARCHAR (100),
	phone BIGINT UNSIGNED,
	INDEX users_lastname_firstname_idx(lastname, firstname) -- idx автоматически PRIMARY and UNIQUE
);

-- связь 1-1
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100) 
);

ALTER TABLE profiles ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), 

    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- связь 1-М

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    `status` ENUM('requested', 'approved', 'declined', 'unfriended'),
   	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE NOW(),
	
    PRIMARY KEY (initiator_user_id, target_user_id), -- составной первичный ключ   1,2 <> 2,1
    FOREIGN KEY (initiator_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (target_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- связь М-М ! д.б.связующая таблица

DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	admin_user_id BIGINT UNSIGNED,

	INDEX communities_name_idx(name),
	FOREIGN KEY (admin_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (community_id) REFERENCES communities(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

-- связь 1-М

DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
  	body TEXT,
  	media_type_id BIGINT UNSIGNED,
    filename VARCHAR(255), -- сылка на файл
    `size` INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE

);

DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE `profiles` ADD CONSTRAINT fk_photo_id
    FOREIGN KEY (photo_id) REFERENCES photos(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Практическое задание к Уроку 3
   
   -- создание таблицы1 по онлайн-играм
   -- связь 1-1
   
DROP TABLE IF EXISTS online_game;
CREATE TABLE online_game (
	id SERIAL PRIMARY KEY,	
    name VARCHAR(100),
    player_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (player_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

 -- создание таблицы2 по музыкальным альбомам
-- связь 1-М

DROP TABLE IF EXISTS `music_albums`;
CREATE TABLE `music_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
	id SERIAL PRIMARY KEY,
	`music_album_id` BIGINT UNSIGNED NOT NULL,
	`media_id` BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (music_album_id) REFERENCES music_albums(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE
);

   
   -- создание таблицы3, чаты между пользователями
   -- связь М-М
   -- создание связующей таблицы
   
    DROP TABLE IF EXISTS chats;
	CREATE TABLE chats (
	id SERIAL PRIMARY KEY,
	name VARCHAR (100),
	owner_chat_id BIGINT UNSIGNED,
	
	INDEX chat_name_idx(name),
	FOREIGN KEY (owner_chat_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL
);
	

DROP TABLE IF EXISTS users_chats;
CREATE TABLE users_chats(
	user_id BIGINT UNSIGNED NOT NULL,
	chats_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, chats_id), 
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (chats_id) REFERENCES chats(id) ON UPDATE CASCADE ON DELETE CASCADE
);
