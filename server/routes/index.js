const express = require('express')

const customerRouter = require('./customer')

const router = express.Router()

router.use('/customers', customerRouter)

module.exports = router;