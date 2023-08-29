
-- Написать функцию, которая удаляет всю информацию об 
-- указанном пользователе из БД vk. Пользователь задается по id. 
-- Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users. 
-- Функция должна возвращать номер пользователя

delimiter //

create function delete_user_from_vk(id INT) renurn INT
delete from messages where id = id;
delete from likes where id = id; 
delete from media where id = id;
delete from profile where user_id = id;
delete from Users where user_id = id;

return id;
end//

delimiter;

select delete_user_from_vk(4);



-- Предыдущую задачу решить с помощью процедуры и обернуть используемые 
-- команды в транзакцию внутри процедуры

delimiter //

create procedure delete_user(in id)

begin
	start transaction;

	delete from messages where id = id;
	delete from likes where id = id; 
	delete from media where id = id;
	delete from profile where user_id = id;
	delete from Users where user_id = id;
	
	commit;
	
	select id;

end //


delimiter;

call delete_user(4);




