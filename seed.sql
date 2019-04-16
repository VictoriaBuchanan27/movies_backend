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

INSERT INTO movie (title, genre_id, img_url)--
VALUES ('Glass',3,'https://m.media-amazon.com/images/M/MV5BMTY1OTA2MjI5OV5BMl5BanBnXkFtZTgwNzkxMjU4NjM@._V1_UY268_CR3,0,182,268_AL_.jpg');

INSERT INTO movie (title, genre_id, img_url)--
VALUES ('Room',3,'http://www.creativehomex.com/wp-content/uploads/2016/06/room-movie-poster-web.jpg');

INSERT INTO movie (title, genre_id, img_url)--
VALUES ('Polar',4,'https://m.media-amazon.com/images/M/MV5BMjAzNDkzODU3Ml5BMl5BanBnXkFtZTgwNDI4OTExNzM@._V1_UX182_CR0,0,182,268_AL_.jpg');

INSERT INTO movie (title, genre_id, img_url)--
VALUES ('Lila & Eve',4,'https://static.rogerebert.com/uploads/movie/movie_poster/lila-and-eve-2015/large_7PDRcfiKIJpCwanHdnuo3UtLgPT.jpg');

INSERT INTO movie (title, genre_id, img_url)--
VALUES ( 'Slice', 5, 'https://m.media-amazon.com/images/M/MV5BMTk1MTA0NzAwNF5BMl5BanBnXkFtZTgwNDE2MzEzNjM@._V1_UY1200_CR90,0,630,1200_AL_.jpg');

INSERT INTO movie (title, genre_id, img_url)--
VALUES ( 'US', 5, 'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg');

INSERT INTO movie (title, genre_id, img_url)--
VALUES ('JURASSIC WORLD: FALLEN KINGDOM',6,'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6257/6257211_sa.jpg;maxHeight=640;maxWidth=550');

/*ratings*/
INSERT INTO ratings (stars, movie_id) VALUES ('5',1);
INSERT INTO ratings (stars, movie_id) VALUES ('4',2);
INSERT INTO ratings (stars, movie_id) VALUES ('5',3);
INSERT INTO ratings (stars, movie_id) VALUES ('4',3);
INSERT INTO ratings (stars, movie_id) VALUES ('5',4);
INSERT INTO ratings (stars, movie_id) VALUES ('3',4);
INSERT INTO ratings (stars, movie_id) VALUES ('2',5);
INSERT INTO ratings (stars, movie_id) VALUES ('5',6);
INSERT INTO ratings (stars, movie_id) VALUES ('4',7);
INSERT INTO ratings (stars, movie_id) VALUES ('5',8);
INSERT INTO ratings (stars, movie_id) VALUES ('5',8);
INSERT INTO ratings (stars, movie_id) VALUES ('5',9);
INSERT INTO ratings (stars, movie_id) VALUES ('4',9);
INSERT INTO ratings (stars, movie_id) VALUES ('1',10);
INSERT INTO ratings (stars, movie_id) VALUES ('5',11);
INSERT INTO ratings (stars, movie_id) VALUES ('3',12);
INSERT INTO ratings (stars, movie_id) VALUES ('5',12);
INSERT INTO ratings (stars, movie_id) VALUES ('3',13);
INSERT INTO ratings (stars, movie_id) VALUES ('3',14);



/*comments*/
INSERT INTO comments(text, movie_id) VALUES('I laughed all thru this fun movie. Movies like this I generally dont like but had a blast watching this one.',1);
INSERT INTO comments(text, movie_id) VALUES('Quirky, funny, sad and true take on a certain stage of adolescence relying on great characters and actors, a fine choice of music. An all around pleasant experience. I would have had no issue with Gerwig taking the directing Oscar for this.',2);
INSERT INTO comments(text, movie_id) VALUES('Wow, great acting. I was waiting for James Franco to enter the movie until I realized Tommy was played by him!! So funny and shows a good friendship',3);
INSERT INTO comments(text, movie_id) VALUES('Slow at times but pretty good.',3);
INSERT INTO comments(text, movie_id) VALUES('NYC romanticism at its finest. love it.',4);
INSERT INTO comments(text, movie_id) VALUES('While Were Young has a charming cast, yet lacks engagement due to its sparse script.',4);
INSERT INTO comments(text, movie_id) VALUES('Ive always enjoyed J.Los films, but Second Act comes across as contrived, formulaic and dull, trying too hard to be a feel-good holiday film but fails miserably in delivering whats really a tired and messy story line. She should hold out for better scripts.',5);
INSERT INTO comments(text, movie_id) VALUES('A wonderful coming-of-age film!',6);
INSERT INTO comments(text, movie_id) VALUES('Mahershala Ali stars as Chirons guardian in this heartbreaking drama of discrimination and forbidden love. Wish he wouldve been more involved in the rest of the story.',7);
INSERT INTO comments(text, movie_id) VALUES('A greatest end show to this trilogy.',8);
INSERT INTO comments(text, movie_id) VALUES('Absolutely love it!!!',8);
INSERT INTO comments(text, movie_id) VALUES('An intense and moving film. Brie Larson`s performance is unique and extraordinary. Beautiful.',9);
INSERT INTO comments(text, movie_id) VALUES('I created an account just to rate this movie. Beautiful, captivating and brilliant. Truly captures the unconditional love between a mother and her child.',9);
INSERT INTO comments(text, movie_id) VALUES('What an awful movie. The only thing, that is interesting, is the interaction between Mads Mikkelsens and Vanessa Hudgens characters.',10);
INSERT INTO comments(text, movie_id) VALUES('I had never heard of this movie, but liked the cast and decided to watch. I was happily surprised! The twists and turns kept me going and as for the ending, I never saw that coming!',11);
INSERT INTO comments(text, movie_id) VALUES('I enjoyed it. It was a fun movie. I liked the 80s look and feel. It had some pretty funny parts. Not a perfect movie but entertaining',12);
INSERT INTO comments(text, movie_id) VALUES('Its a B movie that is very self aware and entertaining',12);
INSERT INTO comments(text, movie_id) VALUES('It was great all the way up until the twist at the end. The twist made a lot of the story not make any sense.',13);
INSERT INTO comments(text, movie_id) VALUES('Their chemistry was good, but everything else was just off.',14);
