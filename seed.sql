DROP DATABASE  if exists movieweb;
CREATE DATABASE movieweb;

\c movieweb

CREATE TABLE movies (
    id SERIAL PRIMARY KEY, 
    title VARCHAR NOT NULL,
    genre_id INT REFERENCES genre(id),
    img_url VARCHAR NOT NULL
);
/*
+ primary id #s for each movie  
+ title has to be a string, and cannot be empty 
+ genres have their own specific # reference 
+ img_url must be sring and can not be left empty*/

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);
/* 
+ primary id #s for each genre 
+ the name (can not be empty)*/

CREATE TABLE ratings (
    id SERIAL PRIMARY KEY, 
    stars INTEGER NOT NULL,
    CHECK (stars BETWEEN 1 AND 5),
    movie_id INT REFERENCES movie(id)
);
/* 
+ each reating has its own id number reference
+ the star are rate 1-5, so the stars must have (#s) / intergers
+ each movie has an id
*/

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    text VARCHAR,
    movie_id INT REFERENCES movies(id)
);
/* 
+ specific id key for each comment
+ must be text
+ each movie have a specific id number refence*/

/*genres*/
INSERT INTO genres (name) VALUES ('comedy'); 
INSERT INTO genres (name) VALUES ('romance'); 
INSERT INTO genres (name) VALUES ('drama');
INSERT INTO genres (name) VALUES ('action');
INSERT INTO genres (name) VALUES ('horror');
INSERT INTO genres (name) VALUES ('sci-fi');

/*movies*/
INSERT INTO movies (title, genre_id, img_url)
VALUES ('Super Bad', 1,'https://images-na.ssl-images-amazon.com/images/I/51gr0eN7X0L.jpg');

INSERT INTO movies (title, genre_id, img_url)
VALUES('Lady bird', 1,'https://images-na.ssl-images-amazon.com/images/I/91XUGLG97KL._SY679_.jpg');
 
INSERT INTO moives (title, genre_id, img_url)
VALUES ('The Disater Artist', 1, 'https://i.pinimg.com/originals/8f/37/eb/8f37ebc0628036cd02bf0ad51201b341.jpg');

INSERT INTO movies (title, genre_id)
VALUES ('While We Are Young', 2, 'https://i.pinimg.com/originals/91/d8/32/91d83213d3a7192fc12cdf94c0b9383b.jpg');

INSERT INTO movies (title, genre_id)
VALUES ('Second Act', 2, 'https://popcornusa.s3.amazonaws.com/movies/650/11003-0-SecondAcjpg');

INSERT INTO movies (title, genre_id)
VALUES ('The Spectacular Now', 2, 'https://m.media-amazon.com/images/M/MV5BMjA5MTc0NTkzM15BMl5BanBnXkFtZTcwODEwNjE3OQ@@._V1_.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ('Moonlight', 3, 'https://img.moviepostershop.com/moonlight-movie-poster-2016-1020776692.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ('Glass',3,'https://m.media-amazon.com/images/M/MV5BMTY1OTA2MjI5OV5BMl5BanBnXkFtZTgwNzkxMjU4NjM@._V1_UY268_CR3,0,182,268_AL_.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ('Room',3,'http://www.creativehomex.com/wp-content/uploads/2016/06/room-movie-poster-web.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ('Polar',4,'https://m.media-amazon.com/images/M/MV5BMjAzNDkzODU3Ml5BMl5BanBnXkFtZTgwNDI4OTExNzM@._V1_UX182_CR0,0,182,268_AL_.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ('Lila & Eve',4,'');

INSERT INTO movie (title, genre_id, img_url)
VALUES ( 'Slice', 5, 'https://m.media-amazon.com/images/M/MV5BMTk1MTA0NzAwNF5BMl5BanBnXkFtZTgwNDE2MzEzNjM@._V1_UY1200_CR90,0,630,1200_AL_.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ( 'US', 5, 'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg');

INSERT INTO movie (title, genre_id, img_url)
VALUES ('JURASSIC WORLD: FALLEN KINGDOM',6,'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6257/6257211_sa.jpg;maxHeight=640;maxWidth=550');

/*ratings*/
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();
INSERT INTO ratings (stars, movie_id) VALUES ();

/*comments*/
