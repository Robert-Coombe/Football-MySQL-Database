DROP TABLE IF EXISTS Championship;
CREATE TABLE Championship(
            champYear year,
            hostCountry varchar(60),
	    hostContinent varchar(13),
	    champion varchar(60),
            runnerUp varchar(60),
	    topScorer char(8),
	    numMatches tinyint default 64,
	    totalAttendence int default 0,
	    aveAttendence int default 0,
        	PRIMARY KEY(champYear)
);
