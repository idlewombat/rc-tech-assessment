CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

INSERT INTO student (name, email) VALUES ('John', 'john@school.com');
INSERT INTO student (name, email) VALUES ('Adam', 'adam@school.com');
INSERT INTO student (name, email) VALUES ('Lucy', 'lucy@school.com');