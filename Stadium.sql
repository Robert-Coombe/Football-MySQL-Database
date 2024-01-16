DROP TABLE IF EXISTS Stadium;
CREATE TABLE Stadium(
	    stadiumID char(8),
            name varchar(40) not null,
            city varchar(60) not null,
	    country varchar(60) not null,
	    type varchar(30),
        	PRIMARY KEY(stadiumID)
);
