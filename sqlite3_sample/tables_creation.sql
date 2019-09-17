CREATE TABLE `team`
(
 `id`         INTEGER PRIMARY KEY AUTOINCREMENT,
 `team_name`  NOT NULL ,
 `acronym`    NOT NULL ,
 `city`       NOT NULL
);

INSERT INTO team (
  'team_name',
  'acronym',
  'city')
VALUES (
  'Paris Saint-Germain',
  'PSG',
  'Paris'
);

insert into team ('team_name', 'acronym', 'city') values ('Lille OSC', 'LOSC', 'Lille');
insert into team ('team_name', 'acronym', 'city') values ('Olympique Lyonnais', 'OL', 'Lyon');

SELECT * FROM team;

-- .mode column
-- .headers on
-- .schema
-- .tables
