USE codeup_test_db;
GRANT ALL ON codeup_test_db.* TO 'codeup_test_user'@'localhost' WITH GRANT OPTION;
CREATE TABLE albums
(
    id           INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(50)    NOT NULL,
    Name         VARCHAR(50)    NOT NULL,
    release_date INT UNSIGNED   NOT NULL DEFAULT 0,
    sales        FLOAT UNSIGNED NOT NULL DEFAULT 0.0,
    genre        VARCHAR(50)    NOT NULL,
    PRIMARY KEY (id)

);
# DESCRIBE albums;
INSERT INTO codeup_test_db.albums (artist, Name, release_date, sales, genre)
VALUES ('Shakira', 'Shakira', '2002', '10,000,000.00', 'latin pop');
DESCRIBE albums;
# SHOW TABLE albums;
SELECT artist FROM albums;
INSERT INTO codeup_test_db.albums (artist, Name, release_date, sales, genre)
VALUES ('Masego', 'Masego', '2002', '3.5', 'latin pop');
SELECT artist FROM albums;