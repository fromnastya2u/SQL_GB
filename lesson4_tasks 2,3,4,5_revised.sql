USE vk;

-- 2. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке.

-- для проверки повтор имени - 3 шт. Damion, Justina, Shaylee 

SELECT DISTINCT firstname FROM users
ORDER BY firstname;

-- 3. Первые пять пользователей пометить как удаленные.

-- UPDATE users 
-- SET user_status = 'deleted'
-- 	WHERE id>=1 AND id<=5; НЕВЕРНО! -- id автоинкрементное поле, не соответствует порядковому номеру.

	-- решение 2
	-- добавление колонки со статусом
ALTER TABLE users 
ADD user_status ENUM('active', 'deleted');
	
UPDATE users  
SET user_status  = 'deleted'
ORDER BY id ASC 
LIMIT 5;

SELECT * FROM users;


-- 4. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней).

DELETE FROM messages 
WHERE created_at > current_timestamp();

-- 5. Название темы курсового проекта:  Портал по поиску и подбору тура



