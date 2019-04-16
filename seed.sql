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
INSERT INTO genres (name) VALUES ('action');
INSERT INTO genres (name) VALUES ('horror');
INSERT INTO genres (name) VALUES ('sci-fi');

/*movies*/
INSERT INTO movies (title, genre_id, img_url);
VALUES ('Super Bad',1,'https://images-na.ssl-images-amazon.com/images/I/51gr0eN7X0L.jpg');

INSERT INTO movies (title, genre_id, img_url);
VALUES('Lady bird', 1,'https://images-na.ssl-images-amazon.com/images/I/91XUGLG97KL._SY679_.jpg');
 
INSERT INTO movies (title, genre_id)