drop procedure if exists position;
DELIMITER //
create procedure `position`(
	IN job_title Varchar(255),
	IN salary varchar(255),
	IN status varchar(255),
	IN duration varchar(255),
	IN location varchar(255))
	
BEGIN
    insert into `position` (
	position.job_title,
	position.salary,
	position.status,
	position.duration,
	position.location)
     values(
	job_title,
	salary,
	status,
	duration,
	location);


END//




