const express = require('express')

const {
  getRestaurants,
  getRestaurant,
  getRestaurantMenu,
  addRestaurant,
  updateRestaurant,
  deleteRestaurant,
} = require('../controllers/restaurant')

const router = express.Router()

router
  .get('/', getRestaurants)
  .get('/:restaurantId', getRestaurant)
  .get('/:restaurantId/menu', getRestaurantMenu)
  .post('/', addRestaurant)
  .patch('/:restaurantId', updateRestaurant)
  .delete('/:restaurantId', deleteRestaurant)


module.exports = router;