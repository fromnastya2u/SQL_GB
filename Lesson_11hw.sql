-- Оптимизация запросов

-- 1. Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
-- помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id SERIAL PRIMARY KEY,
  created DATETIME NOT NULL,
  table_name VARCHAR(100) NOT NULL,
  pk_id VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  ) ENGINE = ARCHIVE;
 
delimiter //
DROP TRIGGER IF EXISTS users_log;
CREATE TRIGGER users_log AFTER INSERT ON users
FOR EACH ROW
   BEGIN 
        INSERT INTO logs SET created=now(), table_name ='users', pk_id=NEW.id, name=NEW.name;
   END//

DROP TRIGGER IF EXISTS catalogs_log;
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs
FOR EACH ROW
    BEGIN 
      INSERT INTO logs SET created=now(), table_name ='catalogs', pk_id=NEW.id, name=NEW.name;
    END//

DROP TRIGGER IF EXISTS products_log;
    CREATE TRIGGER products_log AFTER INSERT ON products
FOR EACH ROW
    BEGIN 
       INSERT INTO logs SET created=now(), table_name ='products', pk_id=NEW.id, name=NEW.name;
    END//
    
DELIMITER ;

-- 2. Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP PROCEDURE IF EXISTS add_users;
DELIMITER //
CREATE PROCEDURE add_users()
    BEGIN
      DECLARE a INT DEFAULT 1;
        WHILE a <= 1000000 DO
              INSERT INTO users SET name=CONCAT('user_name',a);
              SET a = a + 1;
        END WHILE;
END//

DELIMITER ;
CALL add_users();