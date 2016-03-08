DROP TABLE teams;
DROP TABLE players;

CREATE TABLE teams (
  id serial4 primary key,
  name varchar(255),
  manager varchar(255),
  robes varchar(255)
);

CREATE TABLE players (
  id serial4 primary key,
  team_id int4 references teams(id),
  name varchar(255)
);


