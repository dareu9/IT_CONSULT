drop procedure if exists candidate;
DELIMITER //
create procedure `candidate`(
	IN fname Varchar(255),
	IN lname Varchar(255),
	IN position varchar(255),
	IN gender varchar(255),
	IN availability varchar(255))
	
BEGIN
    insert into `candidate` (
	candidate.fname,
	candidate.lname,
	candidate.position,
	candidate.gender,
	candidate.availability)
     values(
	fname,
	lname,
	position,
	gender,
	availability);


END//