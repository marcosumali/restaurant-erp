const express = require('express')

const rootRouter = require('./routes/index')

const app = express()
const PORT = 3000

app.listen(PORT, () => {
  console.log(`App is listening at http://localhost:${PORT}`)
})

app.use('/', rootRouter)