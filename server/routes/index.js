const express = require('express')

const customerRouter = require('./customer')
const restaurantRouter = require('./restaurant')
const staffRouter = require('./staff')

const router = express.Router()

router.use('/customers', customerRouter)
router.use('/restaurants', restaurantRouter)
router.use('/staffs', staffRouter)

module.exports = router;