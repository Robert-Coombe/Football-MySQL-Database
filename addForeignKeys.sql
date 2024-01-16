alter table Matches add foreign key (champYear) references Championship(champYear) on update cascade on delete set null;
alter table Matches add foreign key (venue) references Stadium(stadiumID) on update cascade;
alter table Matches add foreign key (homeTeam) references Team(country) on update cascade;
alter table Matches add foreign key (awayTeam) references Team(country) on update cascade;

alter table Team add foreign key (coach) references Coach(coachID) on update cascade;
alter table Team add foreign key (captain) references Captain(playerID) on update cascade;

alter table Player add foreign key (team) references Team(country) on update cascade;

alter table Captain add foreign key (playerID) references Player(playerID) on update cascade;

alter table Coach add foreign key (team) references Team(country) on update cascade;

alter table Championship add foreign key (champion) references Team(country) on update cascade on delete set null;
alter table Championship add foreign key (runnerUp) references Team(country) on update cascade on delete set null;
alter table Championship add foreign key (topScorer) references Player(playerID) on update cascade on delete set null;

alter table Result add foreign key (matchID) references Matches (matchID) on update cascade;

alter table Shootout add foreign key (matchID) references Matches (matchID) on update cascade;
