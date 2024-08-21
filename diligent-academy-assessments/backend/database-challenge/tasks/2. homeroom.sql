CREATE TABLE homeroom (
    id SERIAL PRIMARY KEY,
    name VARCHAR(10) UNIQUE
);

CREATE INDEX idx_homeroom_name ON homeroom(name);

INSERT INTO homeroom (name) VALUES ('9A');
INSERT INTO homeroom (name) VALUES ('9B');

ALTER TABLE student ADD COLUMN homeroom_id INT;

ALTER TABLE student
ADD CONSTRAINT fk_homeroom
FOREIGN KEY (homeroom_id) REFERENCES homeroom(id);

UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9A') WHERE name = 'John';
UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9A') WHERE name = 'Adam';
UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9B') WHERE name = 'Lucy';