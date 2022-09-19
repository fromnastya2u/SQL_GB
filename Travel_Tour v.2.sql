-- БД туристического агентства по покупкам путевок.
-- Содержит информацию о  клиентах, доступных турах,отелях,  транспорте, выбранных клиентом турах.  
-- Целью является отслеживание запросов клиентов и работы турагентства.
 

DROP DATABASE IF EXISTS travel_tour_v2;
CREATE DATABASE travel_tour_v2;
USE travel_tour_v2;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	users_id SERIAL PRIMARY KEY, -- serial = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
	firstname VARCHAR(100) NOT NULL,
	lastname VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone BIGINT UNIQUE,
	birthday DATE NOT NULL,      -- для проверки возраста покупателя (совершеннолетие) + возможность применить актии (пенсионерам, например)
	gender CHAR (1),             -- например, для возможности применить акциий (девичник/мальчишник)  
	document VARCHAR (100),      -- документ, по которому путешествуют
	INDEX users_lastname_phone_idx(lastname, phone)
);

-- 1-1 
DROP TABLE IF EXISTS profile;
CREATE TABLE profile (
	user_id SERIAL PRIMARY KEY,
	login VARCHAR (100),
	user_password varchar (100),
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (user_id) REFERENCES users(users_id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS country;            
CREATE TABLE country (
	country_id serial PRIMARY KEY,
	country_name VARCHAR (20) NOT NULL		
);

DROP TABLE IF EXISTS city;
CREATE TABLE city (
	city_id serial PRIMARY KEY,
	city_name VARCHAR (20) NOT NULL,
	country BIGINT unsigned NOT NULL,
	
	FOREIGN KEY (country) REFERENCES country(country_id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS hotel_offers;
CREATE TABLE hotel_offers (
	h_id serial PRIMARY KEY,
	h_name VARCHAR (100),
	h_city BIGINT unsigned NOT NULL,                        
	h_price BIGINT,
	h_roomtype VARCHAR (100),
	h_photo BIGINT UNSIGNED,
	h_service TEXT ,            -- услуги отеля
	
	FOREIGN KEY (h_city) REFERENCES city(city_id) ON UPDATE CASCADE ON DELETE CASCADE   -- город отеля взаимосвязан с городом направления тура
);

DROP TABLE IF EXISTS transport_offers;
CREATE TABLE transport_offers (
	t_id serial PRIMARY KEY,
	t_name VARCHAR (100),
	t_city_from VARCHAR(100), -- откуда
	t_city_to VARCHAR (100), -- куда 
	t_dep_date DATE,         -- время вылета
	t_arr_date DATE,         -- время прилета
	t_dep_time INT,          -- время вылета 
	t_arr_time INT,          -- время прилета 
	t_price BIGINT,         -- цена
	t_service text    -- услуги перевозчика
	
	);

DROP TABLE IF EXISTS tours;
CREATE TABLE tours (
	tour_id serial PRIMARY KEY, 
	hotel_id BIGINT unsigned NOT NULL,
	transpotr_id BIGINT unsigned NOT NULL,
	tour_city_from VARCHAR (100),     -- откуда
	tour_city_to VARCHAR (100),       -- куда
	tour_when DATE,                   -- дата отправления
	tour_return DATE,                 -- дата возвращения
	tour_travelers_nubmer TINYINT,    -- количетво путешествующих
	
	FOREIGN KEY (hotel_id) REFERENCES hotel_offers(h_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (transpotr_id) REFERENCES transport_offers(t_id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS selected_tour;   -- таблица выбранных туров
CREATE TABLE selected_tour(
    selected_tour_id serial PRIMARY KEY,
	users_id BIGINT UNSIGNED NOT NULL,   
	tour_id BIGINT UNSIGNED NOT NULL,
	price int NOT NULL,
		
    FOREIGN KEY (users_id) REFERENCES users(users_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (tour_id) REFERENCES tours(tour_id) ON UPDATE CASCADE ON DELETE CASCADE
);