USE codeup_test_db;

CREATE TABLE albums
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist     VARCHAR(50) NOT NULL,
    Name VARCHAR(50)  NOT NULL,
    release_date  INT UNSIGNED NOT NULL DEFAULT 0,
    sales  FLOAT UNSIGNED NOT NULL DEFAULT 0.0,
    genre VARCHAR(50) NOT NULL
);
