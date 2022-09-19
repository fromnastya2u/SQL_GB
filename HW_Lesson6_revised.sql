-- 1.Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

SELECT COUNT(*) AS number_of_messages, from_user_id 
FROM messages WHERE from_user_id IN (
  SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved' 
  union
  SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved' 
)
AND to_user_id=1
GROUP BY from_user_id
ORDER BY number_of_messages DESC LIMIT 1;


 -- 2.Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.

SELECT 
	COUNT(*) AS number_of_likes 
FROM likes 
WHERE media_id IN (
SELECT id FROM media WHERE user_id IN (
SELECT user_id FROM profiles WHERE floor((to_days(now()) - to_days(birthday))/365.25) < 11) 
); 


-- 3.Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT COUNT(*) AS number_of_likes, 
	     (SELECT CASE (gender)
                 WHEN 'm' THEN 'мужской'
                 WHEN 'f' THEN 'женский'
                 ELSE 'другой'
                 END 
         FROM profiles WHERE profiles.user_id=likes.user_id) AS gender 
   FROM likes 
GROUP BY gender
ORDER BY number_of_likes DESC LIMIT 1;
