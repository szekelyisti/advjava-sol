insert into tournament_group(name) values ('GROUP A');
insert into tournament_group(name) values ('GROUP B');
insert into tournament_group(name) values ('GROUP C');
insert into tournament_group(name) values ('GROUP D');
insert into tournament_group(name) values ('GROUP E');
insert into tournament_group(name) values ('GROUP F');
insert into tournament_group(name) values ('GROUP G');
insert into tournament_group(name) values ('GROUP H');

insert into users(username, email) values ('username1', 'username1@gmail.com');
insert into users(username, email) values ('username2', 'username2@gmail.com');
insert into users(username, email) values ('username3', 'username3@gmail.com');


insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Brazil', 1837.56, 'https://www.worldometers.info/img/flags/br-flag.gif', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Belgium', 1821.92, 'https://www.worldometers.info/img/flags/be-flag.gif', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Argentina', 1770.65, 'https://www.worldometers.info/img/flags/ar-flag.gif', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'France', 1764.85, 'https://www.worldometers.info/img/flags/fr-flag.gif', id from tournament_group where name = 'GROUP D';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Denmark', 1665.47, 'https://www.worldometers.info/img/flags/da-flag.gif', id from tournament_group where name = 'GROUP D';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Spain', 1716.93, 'https://www.worldometers.info/img/flags/sp-flag.gif', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Portugal', 1678.65, 'https://www.worldometers.info/img/flags/po-flag.gif', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Germany', 1658.96, 'https://www.worldometers.info/img/flags/gm-flag.gif', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'England', 1737.46, 'https://flagpedia.net/data/flags/h80/gb-eng.webp', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Qatar', 1441.41, 'https://www.worldometers.info/img/flags/qa-flag.gif', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Mexico', 1649.57, 'https://www.worldometers.info/img/flags/mx-flag.gif', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Netherlands', 1679.41, 'https://www.worldometers.info/img/flags/nl-flag.gif', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Uruguay', 1643.71, 'https://www.worldometers.info/img/flags/uy-flag.gif', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Switzerland', 1621.43, 'https://www.worldometers.info/img/flags/sz-flag.gif', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select  'USA', 1635.01, 'https://www.worldometers.info/img/flags/us-flag.gif', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Croatia', 1632.15, 'https://www.worldometers.info/img/flags/hr-flag.gif', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Senegal', 1593.45, 'https://www.worldometers.info/img/flags/sg-flag.gif', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Iran', 1558.64, 'https://www.worldometers.info/img/flags/ir-flag.gif', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Japan', 1552.77, 'https://www.worldometers.info/img/flags/ja-flag.gif', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Morocco', 1558.9, 'https://www.worldometers.info/img/flags/mo-flag.gif', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Serbia', 1549.53, 'https://www.worldometers.info/img/flags/ri-flag.gif', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Poland', 1546.18, 'https://www.worldometers.info/img/flags/pl-flag.gif', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'South Korea', 1526.2, 'https://www.worldometers.info/img/flags/ks-flag.gif', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Tunisia', 1507.86, 'https://www.worldometers.info/img/flags/ts-flag.gif', id from tournament_group where name = 'GROUP D';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Cameroon', 1484.95, 'https://www.worldometers.info/img/flags/cm-flag.gif', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Canada', 1473.82, 'https://www.worldometers.info/img/flags/ca-flag.gif', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Ecuador', 1463.74, 'https://www.worldometers.info/img/flags/ek-flag.gif', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Saudi Arabia', 1435.74, 'https://www.worldometers.info/img/flags/sa-flag.gif', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Ghana', 1389.68, 'https://www.worldometers.info/img/flags/gh-flag.gif', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Wales', 1582.13, 'https://flagpedia.net/data/flags/h80/gb-wls.webp', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Costa Rica', 1500.06, 'https://www.worldometers.info/img/flags/cs-flag.gif', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Australia', 1483.73, 'https://www.worldometers.info/img/flags/as-flag.gif', id from tournament_group where name = 'GROUP D';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-20 19:00:00','YYYY-MM-DD HH:mm:ss'), 'Al Bayt Stadium',id,tournament_group_id from team where name = 'Qatar';
update match set away_team_id=(select id from team where name='Ecuador') where stadium = 'Al Bayt Stadium';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-21 16:00:00','YYYY-MM-DD HH:mm:ss'), 'Khalifa International Stadium',id,tournament_group_id from team where name = 'England';
update match set away_team_id=(select id from team where name='Iran') where stadium = 'Khalifa International Stadium';


insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-21 16:00:00','YYYY-MM-DD HH:mm:ss'), 'Al Janoub Stadium',id,tournament_group_id from team where name = 'France';
update match set away_team_id=(select id from team where name='Australia') where stadium = 'Al Janoub Stadium';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-22 19:00:00','YYYY-MM-DD HH:mm:ss'), 'Stadium 974',id,tournament_group_id from team where name = 'Mexico';
update match set away_team_id=(select id from team where name='Poland') where stadium = 'Stadium 974';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-22 13:00:00','YYYY-MM-DD HH:mm:ss'), 'Lusail Stadium',id,tournament_group_id from team where name = 'Argentina';
update match set away_team_id=(select id from team where name='Saudi Arabia') where stadium = 'Lusail Stadium';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-23 10:00:00','YYYY-MM-DD HH:mm:ss'), 'Ahmad Bin Ali Stadium',id,tournament_group_id from team where name = 'Belgium';
update match set away_team_id=(select id from team where name='Canada') where stadium = 'Ahmad Bin Ali Stadium';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select parsedatetime('2022-11-23 19:00:00','YYYY-MM-DD HH:mm:ss'), 'Al Thumama Stadium',id,tournament_group_id from team where name = 'Spain';
update match set away_team_id=(select id from team where name='Costa Rica') where stadium = 'Al Thumama Stadium';
