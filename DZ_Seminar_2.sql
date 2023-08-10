--  Написать крипт, добавляющий в БД vk, которую создали на 
-- занятии, 2-3 новые таблицы (с перечнем полей, указанием индексов и 
-- внешних ключей
use vk;

-- добавим таблицу увлечений
DROP TABLE IF EXISTS   interests;
CREATE TABLE interests (
	id SERIAL,
	interests_id BIGINT UNSIGNED,
	interests_name varchar(255),
  
    FOREIGN KEY (interests_id) REFERENCES users(id)
);		

-- создадим таблицу хобби, связанную с таблицей 
-- интересов

DROP TABLE IF EXISTS `hobby`;
CREATE TABLE `hobby` (
	id SERIAL,
	`hobby_id` BIGINT UNSIGNED,
	`hobby_name` varchar(255),
	`interests_id` BIGINT UNSIGNED,
	FOREIGN KEY (hobby_id) REFERENCES interests(id)
);

-- добавим таблицу фотоальбомов
DROP TABLE IF EXISTS photo_albums;
CREATE TABLE photo_albums (
	id SERIAL,
	name varchar(255),
    user_id BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- добавим таблицу фотографий
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL,
	`album_id` BIGINT unsigned,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

-- добавим таблицу городов
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL,
	`name` varchar(255) NOT NULL,
    `user_id` BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(id) 
);


-- ------------------ Задача 2.
-- -- Заполнить 2 таблицы БД vk данными (до 10 записей в каждой таблице).
-- -- use vk;
use vk;
-- INSERT into `cities` values (1, 'Moscow',6),
-- INSERT into `cities` values (2,'Saratov',2),
-- INSERT into `cities` values (3,'Samara',7),
-- INSERT into `cities` values (4,'Saint Petersburg',11),
-- INSERT into `cities` values (5,'Pekin',5),
-- INSERT into `cities` values (6,'Milan',9),
-- INSERT into `cities` values (7,'Surgut',3),
-- INSERT into `cities` values (8,'Oslo',2);


INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (10,'Frederik', 'Upton', 'terirendce.cartght@example.org', '912768182');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (6,'Unique', 'Windler', 'rupert55@example.org', '99210290703');
INSERT INTO `users` ( `id`,`firstname`, `lastname`, `email`, `phone`) VALUES (7,'Norene', 'West', 'rebekah29@example.net', '9592139196');
INSERT INTO `users` ( `id`,`firstname`, `lastname`, `email`, `phone`) VALUES (8,'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725');
INSERT INTO `users` ( `id`,`firstname`, `lastname`, `email`, `phone`) VALUES (9,'Victoria', 'Medhurst', 'sstehr@example.net', '945655642385');
INSERT INTO `users` ( `id`,`firstname`, `lastname`, `email`, `phone`) VALUES (11,'Simona', 'Rudaz', 'srudasx@example.net', '94125655642385');

-- INSERT INTO `hobby`values
-- ('1','1','swimming'),
-- ('2','2','running'),
-- ('3','3','yachting');

