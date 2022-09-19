-- 1.Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

SELECT COUNT(*) AS number_of_messages, from_user_id 
FROM messages JOIN friend_requests fr ON from_user_id = initiator_user_id 
                                      OR from_user_id = target_user_id 
WHERE status = 'approved'
AND to_user_id=1
GROUP BY from_user_id
ORDER BY number_of_messages DESC LIMIT 1;


 -- 2.Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.

SELECT 
	COUNT(*) AS number_of_likes
	FROM media m
	JOIN likes l ON l.media_id = m.id
	JOIN profiles p ON p.user_id = m.user_id
WHERE floor((to_days(now()) - to_days(birthday))/365.25) < 11;

-- 3.Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT 
	     CASE (gender)
         WHEN 'm' THEN 'мужской'
         WHEN 'f' THEN 'женский'
         ELSE 'другой'
    END AS gender, COUNT(*) AS number_of_likes
    FROM profiles p JOIN likes l on l.user_id = p.user_id
 GROUP BY gender
 ORDER BY number_of_likes DESC LIMIT 1;