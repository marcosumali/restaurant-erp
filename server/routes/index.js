const express = require('express')

const customerRouter = require('./customer')
const restaurantRouter = require('./restaurant')

const router = express.Router()

router.use('/customers', customerRouter)
router.use('/restaurants', restaurantRouter)

module.exports = router;