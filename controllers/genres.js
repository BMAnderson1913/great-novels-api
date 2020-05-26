const models = require('../models')

const getAllGenres = async (request, response) => {
  try {
    const genres = await models.Genres.findAll()

    return response.send(genres)
  } catch (error) {
    return response.sendStatus(500)
  }
}

const getGenresByIdWithAuthorsAndNovels = async (request, response) => {
  try {
    const { id } = request.params
    const genre = await models.Genres.findOne({
      where: { id },
      include: [{ include: [{ model: models.Authors }], model: models.Novels }],
    })

    return genre
      ? response.send(genre)
      : response.sendStatus(404)
  } catch (error) {
    return response.sendStatus(500)
  }
}

module.exports = { getAllGenres, getGenresByIdWithAuthorsAndNovels }
