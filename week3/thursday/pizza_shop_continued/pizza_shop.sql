CREATE TABLE pizzas (
  id SERIAL8 PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  pizza_type varchar(255),
  quantity INT2,
  created_at TIMESTAMP DEFAULT LOCALTIMESTAMP
);