DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
            country varchar(60),
            coach char(8),
	    captain char(8),
            continent varchar(13),
        	PRIMARY KEY(country)
);
