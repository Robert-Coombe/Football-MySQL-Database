DROP TABLE IF EXISTS Captain;
CREATE TABLE Captain(
	    playerID char(8),
	    matchesCaptained smallint default 0,
        	PRIMARY KEY(playerID)
);
