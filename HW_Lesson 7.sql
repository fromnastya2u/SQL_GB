#Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
INSERT INTO orders ( user_id)  -- заполняем таблицу данными для проверки
VALUES
(2),
(2),
(5),
(6),
(1);

SELECT users.id, name FROM users
WHERE users.id IN (SELECT user_id FROM orders);

-- вариант 2

SELECT u.id, u.name FROM users u 
JOIN orders o WHERE u.id = o.user_id
GROUP BY u.id;  


#Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT products.name, catalogs.name AS 'раздел catalogs'
FROM products JOIN catalogs ON catalogs.id=catalog_id;


# Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
# Поля from, to и label содержат английские названия городов, поле name — русское. 
# Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  fr_om VARCHAR(255),      -- при написании 'from' и 'to' выдает синтаксическую ошибку
  t_o VARCHAR(255) 
);

INSERT INTO flights (fr_om, t_o) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');
 
 DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255), 
  name VARCHAR(255) 
);

INSERT INTO cities (label, name) VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');

SELECT * FROM flights;
SELECT * FROM cities;

SELECT id, 
(SELECT name FROM cities WHERE label=fr_om) AS 'from',
(SELECT name FROM cities WHERE label=t_o) AS 'to'
FROM flights;
