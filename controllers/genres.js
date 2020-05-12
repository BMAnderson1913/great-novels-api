const models = require('../models')

const getAllGenres = async (request, response) => {
  const genres = await models.Genres.findAll()

  return response.send(genres)
}

const getGenresByIdWithAuthorsAndNovels = async (request, response) => {
  const { id } = request.params

  const genre = await models.Genres.findOne({
    where: { id },
    include: [{
      model: models.Authors,
      include: [{ model: models.Novels }]
    }]
  })

  return genre
    ? response.send(genre)
    : response.sendStatus(404)
}

module.exports = { getAllGenres, getGenresByIdWithAuthorsAndNovels }
