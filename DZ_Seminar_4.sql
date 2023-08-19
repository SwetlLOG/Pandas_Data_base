-- Задание 1
-- Подсчитать количество групп (сообществ), в которые вступил каждый пользователь

SELECT users.id, COUNT (communities.id) as count
FROM users
GROUP  BY users.id;




-- Задание 2
-- Подсчитать количество пользователей в каждом сообществе
SELECT communities.id, COUNT(users.id) as count
FROM communities
GROUP  BY communities.id;
    


--	Задание 3
-- Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека,
-- который больше всех общался с выбранным пользователем (написал ему сообщений)

SELECT
    from_user_id,
    COUNT(*) as send 
FROM messages 
WHERE to_user_id=1
GROUP BY from_user_id
ORDER BY send DESC;
 


