const express = require('express')
const { getAllAuthors, getAuthorByIdWithGenresAndNovels } = require('./controllers/authors.js')
const { getAllGenres, getGenresByIdWithAuthorsAndNovels } = require('./controllers/genres.js')
const { getAllNovels, getNovelsByIdWithAuthorsAndGenres } = require('./controllers/novels.js')

const app = express()

app.get('/authors', getAllAuthors)
app.get('/authors/:identifier', getAuthorByIdWithGenresAndNovels)
app.get('/genres', getAllGenres)
app.get('/genres/:identifier', getGenresByIdWithAuthorsAndNovels)
app.get('/novels', getAllNovels)
app.get('/novels/:identifier', getNovelsByIdWithAuthorsAndGenres)

app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337...')
})

