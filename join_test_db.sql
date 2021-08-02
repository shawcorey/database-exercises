CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);
#2
INSERT INTO users (name, email, role_id) VALUES
('jim bob', 'jimbob@exmaple.com', null),
('clyde', 'clyde@exmaple.com',2),
('vegeta', 'vegeta@exmaple.com',2),
('kakarot', 'kakarot@exmaple.com',2);

SELECT * FROM users;


#3
SELECT u.name as user_name, r.name as role_name
FROM users u
RIGHT JOIN roles r on u.role_id = r.id;


INSERT INTO users (name, email, role_id)
VALUES ('jim bob', 'jimbob@example.com', 4);

#4
SELECT r.name, COUNT(r.name) as 'Role Count'
FROM users u
JOIN roles r on u.role_id = r.id
GROUP BY r.name;

