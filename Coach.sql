DROP TABLE IF EXISTS Coach;
CREATE TABLE Coach(
	    coachID char(8),
            firstName varchar(15) not null,
	    lastName varchar(20) not null,
	    team varchar(60),
	    DOB date,
        	PRIMARY KEY(coachID)
);
