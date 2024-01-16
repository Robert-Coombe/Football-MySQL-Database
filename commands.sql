drop database if exists WomensFIFA;
create database WomensFIFA;
use WomensFIFA;

source Team.sql
source Captain.sql
source Championship.sql
source Player.sql
source Matches.sql
source Coach.sql
source Result.sql
source Shootout.sql
source Stadium.sql
select "Finished Tables";

source addForeignKeys.sql
select "Finished Foreign Keys";

source addViews.sql
select "Finished Views";
