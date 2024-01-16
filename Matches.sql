DROP TABLE IF EXISTS Matches;
CREATE TABLE Matches(
            matchID char(10),
            matchDate datetime,
	    champYear year,
	    venue varchar(40),
            homeTeam varchar(60),
	    awayTeam varchar(60),
	    stage varchar(12),
        	PRIMARY KEY(matchID)
);
