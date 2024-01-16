drop view if exists matchResults;
create view matchResults as 
	select Matches.matchId, homeTeam, homeGoals, awayTeam, awayGoals, stage, venue, matchDate, champYear, extraTime, referee, attendence from Matches inner join Result on Matches.matchID = Result.matchID;

drop view if exists matchResultsShootout;
create view matchResultsShootout as
	select matchResults.matchID, homeTeam, homeGoals, homePenalties, awayTeam, awayGoals, awayPenalties from matchResults inner join Shootout on matchResults.matchID = Shootout.matchID;

drop view if exists teamOverview;
create view teamOverview as 
	select country as "Name", concat(Coach.firstName," ",Coach.lastName) as "Coach", concat(Player.firstName," ",Player.lastName) as "Captain" from Player inner join Team on Player.playerID = Team.captain inner join Coach on Team.coach = coachID;
