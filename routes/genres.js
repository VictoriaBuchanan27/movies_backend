const express = require('express');
const Genres = require('../services/genres');

const getGenre = (req, res) => {
    Genres.get(req.params.id)
        .then(data => {
            res.json({success: true, data});
        })
}
const postGenre = (req, res) => {
    Genres.add(req.body.name)
        .then(data => {
            res.send(404)
        })
}
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