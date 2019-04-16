const express = require('express');
const bodyParser = require('body-parser');

const {getCommentsRouter, } = require('./routes/comments')
const {getGenresRouter, } = require('./routes/genres')
const {getMoviesRouter, } = require('./routes/movies')
const {getRatingsRouter, } = require('./routes/ratings')
