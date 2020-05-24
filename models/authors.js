const Authors = (connection, Sequelize) => {
  return connection.define('authors', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    firstName: { type: Sequelize.STRING },
    lastName: { type: Sequelize.STRING },
  }, {
    defaultScope: {
      attributes: { exlcude: ['deletedAt'] }
    }
  }, { paranoid: true })
}

module.exports = Authors
