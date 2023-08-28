-- Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]


create view Ages_Users AS 
SELECT *
FROM profiles 
WHERE 
     TIMESTAMPDIFF(YEAR, birthday, NOW()) > 35
     AND gender = 'm';

    
 -- Выведите данные, используя написанное представление [SELECT]  
 
  
SELECT 
  COUNT(user_id) OVER (partition by photo_id) as cf,
  photo_id
from
	Ages_Users
  
  -- Удалите представление [DROP VIEW]z

drop view Ages_Users
     
   -- * Сколько новостей (записей в таблице media) у каждого пользователя?
    -- Вывести поля: news_count (количество новостей), user_id (номер пользователя),
    -- user_email (email пользователя). 
   -- Попробовать решить с помощью CTE или с помощью обычного JOIN

SELECT 
 COUNT(*),
 user_id,
 email
FROM media as m
JOIN users as u on u.id = m.user_id 
GROUP BY user_id;








  