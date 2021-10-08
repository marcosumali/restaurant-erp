require('dotenv').config()
const express = require('express')

const rootRouter = require('./routes/index')

const app = express()
const PORT = 3000

app.use(express.json()) // for parsing application/json
app.use(express.urlencoded({ extended: true })) // for parsing application/x-www-form-urlencoded

app.listen(PORT, () => {
  console.log(`App is listening at http://localhost:${PORT}`)
})

app.use('/', rootRouter)