const express = require('express')

const db = require('../configs/db')

const router = express.Router()

router
  .get('/', async (req, res) => {
    const customers = await db.query('SELECT * FROM customer LIMIT 1')
    res.json(customers.rows)
  })


module.exports = router;