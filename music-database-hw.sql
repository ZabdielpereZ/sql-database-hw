

CREATE DATABASE music;

USE music;

CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Genre (
    genre_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

ALTER TABLE Albums
ADD COLUMN duration INT;

INSERT INTO Artists (artist_id, name) VALUES (1, 'Artist One');
INSERT INTO Genre (genre_id, name) VALUES (1, 'Genre One');
INSERT INTO Albums (album_id, title, artist_id, genre_id, release_year, total_tracks, duration) 
VALUES (1, 'Album One', 1, 1, 2023, 10, 42);

SELECT * FROM Artists;
SELECT * FROM Genre;
SELECT * FROM Albums;

