DROP TABLE IF EXISTS Result;
CREATE TABLE Result(
	    matchID char(10),
            homeGoals tinyint default 0,
            awayGoals tinyint default 0,
	    extraTime tinyint default 0 check (extraTime <= 30),
	    referee varchar(35),
            attendence int default 0,
            	primary key(matchID)
);
