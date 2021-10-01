const express = require('express')

const router = express.Router()

router
  .get('/', (req, res) => {
    res.send('customer nih')
  })


module.exports = router;