DROP TABLE IF EXISTS Player;
CREATE TABLE Player(
	    playerID char(8),
            firstName varchar(15) not null,
	    lastName varchar(20),
            position varchar(25),
	    DOB date,
            careerGoals smallint default 0,
	    team varchar(60),
        	PRIMARY KEY(playerID)
);
