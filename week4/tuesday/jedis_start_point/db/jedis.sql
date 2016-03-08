DROP TABLE Lightsabers;
DROP TABLE Jedis;

CREATE TABLE Jedis (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE Lightsabers (
  id serial4 primary key,
  name VARCHAR(255),
  jedi_id int4 REFERENCES jedis(id) NOT NULL
);

INSERT INTO Jedis(name) VALUES ('Luke');
INSERT INTO Jedis(name) VALUES ('Obi Wan');

INSERT INTO Lightsabers(name, jedi_id) VALUES ('Lukes Lame Saber',1);
INSERT INTO Lightsabers(name, jedi_id) VALUES ('Lukes Rainy Day Saber',1);
INSERT INTO Lightsabers(name, jedi_id) VALUES ('Obi Wans Mighty Stick',2);
INSERT INTO Lightsabers(name, jedi_id) VALUES ('Obi Wans Sad Pokey Thing',2);