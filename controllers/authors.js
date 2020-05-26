const models = require('../models')

const getAllAuthors = async (request, response) => {
  try {
    const authors = await models.Authors.findAll()

    return response.send(authors)
  } catch (error) {
    return response.sendStatus(500)
  }
}

const getAuthorByIdWithGenresAndNovels = async (request, response) => {
  try {
    const { identifier } = request.params
    const author = await models.Authors.findAll({
      include: [{
        include: [{ model: models.Genres }],
        model: models.Novels
      }],
      where: {
        [models.Op.or]: [
          { id: { [models.Op.like]: identifier } },
          { lastName: { [models.Op.like]: `%${identifier.toLowerCase()}%` } }
        ]
      }
    })

    return author.length
      ? response.send(author)
      : response.sendStatus(404)
  } catch (error) {
    return response.sendStatus(500)
  }
}

module.exports = { getAllAuthors, getAuthorByIdWithGenresAndNovels }
