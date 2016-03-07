CREATE TABLE teams (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  manager VARCHAR(255),
  robes VARCHAR(255)
);

CREATE TABLE players (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  team_id int8 REFERENCES teams(id)
);