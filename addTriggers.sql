drop trigger if exists updateChampAttendence1;
delimiter //
create trigger updateChampAttendence1
	after update on Result
	for each row
begin
	declare cYear year;
	select champYear from Matches where Matches.matchID = new.matchID into cYear;

	if new.attendence <> old.attendence and cYear is not null then	
		update Championship set totalAttendance = (select sum(attendence) from matchResults where champYear = cYear);	
	end if;
end;
//
delimiter ;


drop trigger if exists updateChampAttendence2;
delimiter //
create trigger updateChampAttendence2
	after insert on Result
	for each row
begin
	declare cYear year;
	select champYear from Matches where Matches.matchID = new.matchID into cYear;

	if new.Attendence <> 0 and cYear is not null then
		update Championship set totalAttendance = (select sum(attendence) from matchResults where champYear = cYear);
	end if;
end;
//
delimiter ;
