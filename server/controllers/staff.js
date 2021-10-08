const {isEmpty} = require('lodash')

const db = require('../configs/db')
const {getUniqueId} = require('../helper/utils')

const register = async (req, res) => {
  try {
    const {name, gender, date_of_birth, phone, email, password, roleId, restaurantId} = req.body
    const staffs = await db.query(
      `INSERT INTO staff (id, name, gender, date_of_birth, phone, email, password, roleId, restaurantId) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *`, 
      [getUniqueId(), name, gender, date_of_birth, phone, email, password, roleId, restaurantId])
    const newStaff = !isEmpty(staffs.rows[0])? staffs.rows[0] : []

    res.status(200).json(newStaff)

  } catch (err) {
    console.error(err)
    res.status(400).json({errorMessage: err.message})
  }
}


module.exports = {
  register,
}