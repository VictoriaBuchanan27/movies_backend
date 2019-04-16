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
VALUES ('Lila & Eve',4,'data:image/jpeg;base64,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');

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
