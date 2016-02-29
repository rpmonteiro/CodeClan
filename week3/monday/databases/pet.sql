-- CREATE TABLE pet(
--   id SERIAL8 PRIMARY KEY,
--   name VARCHAR(255),
--   owner_id INT8 REFERENCES person(id),
--   date_of_birth DATE,
--   date_of_death DATE
-- );

ALTER TABLE pet ADD CONSTRAINT unique_pet_name_owner UNIQUE(name, owner_id);