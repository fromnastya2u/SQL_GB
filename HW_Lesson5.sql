-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
USE lesson5;

UPDATE users SET created_at = str_to_date(created_at,'%d.%m.%Y %H:%i'),
                 updated_at = str_to_date(updated_at,'%d.%m.%Y %H:%i');
ALTER TABLE users MODIFY COLUMN created_at DATETIME,
                  MODIFY COLUMN updated_at DATETIME;

UPDATE users
SET created_at = current_timestamp(),
    updated_at = current_timestamp();
    
   
 -- 2.Таблица users была неудачно спроектирована.
 -- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 -- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
  
CONVERT (datetime, created_at, 104) FROM users;
ALTER TABLE users 
ALTER COLUMN created_at TYPE datetime(100);

 
ALTER TABLE users ADD (created_at_formatted DATETIME);

UPDATE users 
SET created_at_formatted=STR_TO_DATE(created_at, 'DD.MM.YYYY hh:mm');

SELECT CONVERT(Datetime, created_at, 113) FROM users;

SELECT CONVERT( VARCHAR(30), created_at  ,120) 

SELECT CONVERT(VARCHAR(255), GETDATE(), 120) FROM users;

SELECT FORMAT(GETDATE(@created_at), 'yyyy/MM/dd HH:mm:ss');
SELECT CONVERT(created_at , GETDATE(), 101);
SELECT * FROM users;

ALTER TABLE users
MODIFY COLUMN created_at DATETIME(1);

 -- CHANGE created_at created_at datetime NULL;
-- UPDATE users SET formatted_date = from_unixtime(created_at);
 -- MODIFY COLUMN updated_at DATETIME; 



 -- 3.В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
 -- 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 -- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
 -- Однако нулевые запасы должны выводиться в конце, после всех записей

INSERT INTO storehouses_products
  (value)
VALUES (0),  (1),  (4),  (7),  (2),  (10),  (0);

SELECT id, value FROM storehouses_products
ORDER BY 
FIELD(value, 0), value;

   -- 4.Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
   -- Месяцы заданы в виде списка английских названий (may, august)

SELECT id,birthday_at FROM users
WHERE monthname(birthday_at) IN ('may', 'august');
   
   -- 5. Из таблицы catalogs извлекаются записи при помощи запроса. 
   -- SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
   -- Отсортируйте записи в порядке, заданном в списке IN.

SELECT * FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY field (id, 5, 1, 2); 
   
 -- 6. Подсчитайте средний возраст пользователей в таблице users.
-- для проверки вывожу возраст пользователей.
SELECT name, birthday_at, 
floor((to_days(now()) - to_days(birthday_at))/365.25) AS age 
FROM users;

-- подсчёт среднего возроста, округленный до полных лет
SELECT AVG(floor((to_days(now()) - to_days(birthday_at))/365.25 )) AS avg_age 
FROM users;

 -- 7. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 -- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

 -- таблица для проверки:
SELECT name, birthday_at, 
dayname (birthday_at) AS bitrh_date_name, -- название дня недели в год рождения 
DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month) AS bd_2022, -- день рождения в текущем году
dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) AS bd_name_2022 -- название для недели ДР в текущем году
FROM users;

SELECT  
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Monday' then 1 else 0 end) as mondays_BD,
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Tuesday' then 1 else 0 end) as tuesdays_BD,
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Wednesday' then 1 else 0 end) as wednesdays_BD,
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Thursday' then 1 else 0 end) as thursdays_BD,
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Friday' then 1 else 0 end) as fridayss_BD,
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Saturday' then 1 else 0 end) as saturdays_BD,
  sum(case when dayname (DATE_ADD(birthday_at, INTERVAL floor ((to_days(now()) - to_days(birthday_at))/365.25*12) month)) = 'Sunday' then 1 else 0 end) as sundays_BD
 from users;


