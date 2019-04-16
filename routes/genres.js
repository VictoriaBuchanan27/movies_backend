const express = require('express');
const Genres = require('../services/genres');

//get
//post
//getall
//put


const getGenresRouter = () => {
    const router = express.Router();

    router.post('/', postGenre)
    router.get('/', getAllGenre)
    router.get('/:id', getGenre)
    router.put('/:id', putGenre)
    router.get('/:id/movies', getMoviesByGenre)

    return router;
}

module.exports = {
    getGenresRouter,
};