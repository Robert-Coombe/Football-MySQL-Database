DROP TABLE IF EXISTS Shootout;
CREATE TABLE Shootout(
	    matchID char(10),
            homePenalties tinyint default 0,
            awayPenalties tinyint default 0,
            	primary key(matchID)
);
