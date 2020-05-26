const models = require('../models')

const getAllNovels = async (request, response) => {
  try {
    const novels = await models.Novels.findAll({
      include: [{ model: models.Authors }, { model: models.Genres }]
    })

    return response.send(novels)
  } catch (error) {
    return response.sendStatus(500)
  }
}

const getNovelsByIdWithAuthorsAndGenres = async (request, response) => {
  try {
    const { identifier } = request.params
    const novel = await models.Novels.findAll({
      include: [{ model: models.Authors }, { model: models.Genres }],
      where: {
        [models.Op.or]:
  [{ id: { [models.Op.like]: identifier } },
    { title: { [models.Op.like]: `%${identifier.toLowerCase()}%` } }
  ]
      }
    })

    return novel
      ? response.send(novel)
      : response.sendStatus(404)
  } catch (error) {
    return response.sendStatus(500)
  }
}

module.exports = { getAllNovels, getNovelsByIdWithAuthorsAndGenres }
