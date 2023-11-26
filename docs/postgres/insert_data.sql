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


insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Bayern München', 120000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50037.png', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Manchester United', 89000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52682.png', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'København', 40500, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52709.png', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Galatasaray', 27500, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50067.png', id from tournament_group where name = 'GROUP D';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Sevilla', 82000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52714.png', id from tournament_group where name = 'GROUP D';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Arsenal', 54000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52280.png', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'PSV Eindhoven', 41000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50062.png', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Lens', 4000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52277.png', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Napoli', 67000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50136.png', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Real Madrid', 106000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50051.png', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Braga', 46000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52336.png', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Union Berlin', 21000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/77977.png', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Benfica', 69000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50147.png', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Internazionale', 85000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50138.png', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Red Bull Salzburg', 47000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50030.png', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Real Sociedad', 37000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50123.png', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Feyenoord', 53000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52749.png', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Atlético Madrid', 69000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50124.png', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Lazio', 40000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52973.png', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Celtic', 29000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50050.png', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Paris Saint-Germain', 97000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52747.png', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Borussia Dortmund', 72000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52758.png', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Milan', 47000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50058.png', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Newcastle United', 4000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/59324.png', id from tournament_group where name = 'GROUP D';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Manchester City', 124000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52919.png', id from tournament_group where name = 'GROUP G';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'RB Leipzig', 83000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/2603790.png', id from tournament_group where name = 'GROUP F';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Crvena zvezda', 39000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50069.png', id from tournament_group where name = 'GROUP A';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Young Boys', 31500, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50031.png', id from tournament_group where name = 'GROUP C';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Barcelona', 72000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50080.png', id from tournament_group where name = 'GROUP H';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Porto', 62000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50064.png', id from tournament_group where name = 'GROUP B';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Shakhtar Donetsk', 57000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/52707.png', id from tournament_group where name = 'GROUP E';
insert into team(name, ranking_points,flag_path, tournament_group_id) select 'Antwerp', 21000, 'https://img.uefa.com/imgml/TP/teams/logos/70x70/50113.png', id from tournament_group where name = 'GROUP D';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-20 19:00:00','YYYY-MM-DD HH24:MI:SS'), 'Celtic Park',id,tournament_group_id from team where name = 'Bayern München';
update match set away_team_id=subquery.id from (select id from team where name='Manchester United') as subquery where stadium = 'Celtic Park';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-21 16:00:00','YYYY-MM-DD HH24:MI:SS'), 'Yeni Hatay Stadyumu',id,tournament_group_id from team where name = 'Galatasaray';
update match set away_team_id=subquery.id from (select id from team where name='København') as subquery where stadium = 'Yeni Hatay Stadyumu';


insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-21 16:00:00','YYYY-MM-DD HH24:MI:SS'), 'Estadio do Dragao',id,tournament_group_id from team where name = 'Sevilla';
update match set away_team_id=subquery.id from (select id from team where name='Arsenal') as subquery where stadium = 'Estadio do Dragao';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-22 19:00:00','YYYY-MM-DD HH24:MI:SS'), 'Red Star Stadium',id,tournament_group_id from team where name = 'PSV Eindhoven';
update match set away_team_id=subquery.id from (select id from team where name='Lens') as subquery where stadium = 'Red Star Stadium';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-22 13:00:00','YYYY-MM-DD HH24:MI:SS'), 'Signal Iduna Park',id,tournament_group_id from team where name = 'Napoli';
update match set away_team_id=subquery.id from (select id from team where name='Real Madrid') as subquery where stadium = 'Signal Iduna Park';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-23 10:00:00','YYYY-MM-DD HH24:MI:SS'), 'San Siro',id,tournament_group_id from team where name = 'Braga';
update match set away_team_id=subquery.id from (select id from team where name='Union Berlin') as subquery where stadium = 'San Siro';

insert into match(start_time, stadium, home_team_id, tournament_group_id)
select TO_TIMESTAMP('2023-11-23 19:00:00','YYYY-MM-DD HH24:MI:SS'), 'Estadi Municipal Els Arcs',id,tournament_group_id from team where name = 'Benfica';
update match set away_team_id=subquery.id from (select id from team where name='Internazionale') as subquery where stadium = 'Estadi Municipal Els Arcs';