drop procedure if exists Manager;
DELIMITER //
create procedure `Manager`(
	IN fname Varchar(255),
	IN lname Varchar(255),
	IN position varchar(255),
	IN gender varchar(255)
	)
	
BEGIN
    insert into `Manager` (
	Manager.fname,
	Manager.lname,
	Manager.position,
	Manager.gender
	)
     values(
	fname,
	lname,
	position,
	gender
	);


END//