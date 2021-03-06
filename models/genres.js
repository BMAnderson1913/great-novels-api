const Genres = (connection, Sequelize) => {
  return connection.define('genres', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    name: { type: Sequelize.STRING },
  }, {
    defaultScope: {
      attributes: { exclude: ['deletedAt'] }
    }
  }, { paranoid: true })
}

module.exports = Genres
