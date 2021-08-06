CREATE DATABASE IF NOT EXISTS movies_db;

USE movies_db;

DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS movies
(
    title    VARCHAR(50)  NOT NULL,
    rating   INT UNSIGNED,
    poster   TEXT,
    year     INT          NOT NULL,
    genre    VARCHAR(70)  NOT NULL,
    director VARCHAR(50)  NOT NULL,
    plot     TEXT,
    actors   VARCHAR(100) NOT NULL,
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

DESCRIBE movies;

# INSERT INTO movies (title, rating, year, genre, director, actors, id)
# VALUES ('Gone With The Wind', 3, 1932, 'Western', 'Victor Fleming', 'Clark Gable', 3) ;
# INSERT INTO movies (title, rating, year, genre, director, actors)
# VALUES ('Pinocchio', 3, 1932, 'Western', 'Victor Fleming', 'Clark Gable');
#
# SELECT * FROM movies;