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
+ primary id #s for each movie 
+ the name (can not be empty)*/

CREATE TABLE ratings (
    id SERIAL PRIMARY KEY, 
    stars INTEGER NOT NULL,
    movie_id INT REFERENCES movie(id)
);
/* 
+ each movie has its own id number reference
+ the star are rate 1-5, so the stars must have (#s) / intergers
+


