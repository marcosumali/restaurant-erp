const {isEmpty} = require('lodash') 

const db = require('../configs/db')
const {
  getUniqueId,
  getPatchSetQueries,
} = require('../helper/utils')

const getRestaurants = async (req, res) => {
  try {
    const {page, rowsPerPage} = req.query
    const offset = (page -1) * rowsPerPage
    const restaurants = await db.query('SELECT * FROM restaurant LIMIT $1 OFFSET $2', [rowsPerPage, offset])
    res.status(200).json(restaurants.rows)
  } catch (err) {
    console.error('ERROR:', err)
    res.status(400).json({errorMessage: err.message})
  }
}

const getRestaurant = async (req, res) => {
  try {
    const {restaurantId} = req.params
    const restaurants = await db.query('SELECT * FROM restaurant WHERE id = $1', [restaurantId])
    const restaurant = !isEmpty(restaurants.rows[0])? restaurants.rows[0] : []
    res.status(200).json(restaurant)
  } catch (err) {
    console.error('ERROR:', err.message)
    res.status(400).json({errorMessage: err.message})
  }
}

const getRestaurantMenu = async (req, res) => {
  try {
    const {restaurantId} = req.params
    const {page, rowsPerPage} = req.query
    const offset = (page -1) * rowsPerPage
    const restaurants = await db.query('SELECT * FROM restaurant WHERE id = $1', [restaurantId])
    const restaurant = !isEmpty(restaurants.rows[0])? restaurants.rows[0] : []

    const menu = await db.query(
      `SELECT menu.id, menu.name, menu.description, menu.price FROM menu 
      LEFT JOIN restaurant ON menu.restaurantId = restaurant.id
      WHERE menu.restaurantId = $1
      LIMIT $2 OFFSET $3`, 
      [restaurantId, rowsPerPage, offset]
    )
    
    if (!isEmpty(restaurant)) {
      restaurant.menu = menu.rows
    }

    res.status(200).json(restaurant)
  } catch (err) {
    console.error('ERROR:', err)
    res.status(400).json({errorMessage: err.message})
  }
}

const addRestaurant = async (req, res) => {
  try {
    const {name, phone, address} = req.body
    const newName = name && name.length > 0? name : null
    const newPhone = phone? phone : null
    const newAddress = address? address : null

    const restaurants = await db.query(
      `INSERT INTO restaurant (id, name, address, phone) VALUES ($1, $2, $3, $4) RETURNING *`, 
      [getUniqueId(), newName, newPhone, newAddress])
    const newRestaurant = !isEmpty(restaurants.rows[0])? restaurants.rows[0] : []

    res.status(200).json(newRestaurant)

  } catch (err) {
    console.error('ERROR:', err.message)
    res.status(400).json({errorMessage: err.message})
  }
}

const updateRestaurant = async (req, res) => {
  try {
    const {restaurantId} = req.params
    const {setQueries, values} = getPatchSetQueries(req.body, 2)

    const restaurants = await db.query(
      `UPDATE restaurant SET ${setQueries}
      WHERE restaurant.id = $1
      RETURNING *`,
      [restaurantId].concat(values)
    )
    const updatedRestaurant = !isEmpty(restaurants.rows[0])? restaurants.rows[0] : []
    res.status(200).json(updatedRestaurant.rows[0])

  } catch (err) {
    console.error('ERROR:', err.message)
    res.status(400).json({errorMessage: err.message})
  }
}

const deleteRestaurant = async (req, res) => {
  try {
    const {restaurantId} = req.params

    const restaurants = await db.query(
      `DELETE FROM restaurant WHERE restaurant.id = $1
      RETURNING *`,
      [restaurantId]
    )
    const deletedRestaurant = !isEmpty(restaurants.rows[0])? restaurants.rows[0] : []
    res.status(200).json(deletedRestaurant.rows[0])

  } catch (err) {
    console.error('ERROR:', err.message)
    res.status(400).json({errorMessage: err.message})
  }
}


module.exports={
  getRestaurants,
  getRestaurant,
  getRestaurantMenu,
  addRestaurant,
  updateRestaurant,
  deleteRestaurant,
}