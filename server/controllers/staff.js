const jwt = require('jsonwebtoken')
const {isEmpty} = require('lodash')
const {compare} = require('bcryptjs')

const db = require('../configs/db')
const {getUniqueId} = require('../helper/utils')
const {
  generateAccessToken,
  generateRefreshToken,
} = require('../helper/staff')

const {SECRET_REFRESH_TOKEN} = process.env


const register = async (req, res) => {
  try {
    const {name, gender, date_of_birth, phone, email, password, roleid, restaurantid} = req.body
    const staffs = await db.query(
      `INSERT INTO staff (id, name, gender, date_of_birth, phone, email, password, roleid, restaurantid) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *`, 
      [getUniqueId(), name, gender, date_of_birth, phone, email, password, roleid, restaurantid]
    )
    const newStaff = !isEmpty(staffs.rows[0])? staffs.rows[0] : []

    res.status(200).json(newStaff)

  } catch (err) {
    console.error(err)
    res.status(400).json({errorMessage: err.message})
  }
}

const login = async (req, res) => {
  try {
    const {email, password} = req.body
    const staffs = await db.query(
      `SELECT id, name, gender, date_of_birth, phone, email, password, roleId, restaurantId FROM staff WHERE email = $1`, 
      [email]
    )
    const staff = !isEmpty(staffs.rows[0])? staffs.rows[0] : []
    
    if (isEmpty(staff)) throw new Error(`Email and/or password is incorrect`)
    if (!isEmpty(staff)) {
      const isValid = await compare(password, staff.password) 
      if (!isValid) throw new Error(`Email and/or password is incorrect`)
      if (isValid) {
        // Generate tokens
        const {id, name, email, roleid, restaurantid} = staff
        const userJwt = {id, name, email, roleid, restaurantid}
        
        const {access_token, expired_at} = generateAccessToken(userJwt)
        // Save refresh token
        const refresh_token = generateRefreshToken(userJwt)
        const staffTokens = await db.query(
          `SELECT * FROM staff_token WHERE staffId = $1`, 
          [staff.id]
        )
        const staffToken = !isEmpty(staffTokens.rows[0])? staffTokens.rows[0] : []
      
        if (isEmpty(staffToken)) {
          await db.query(
            `INSERT INTO staff_token (staffId, token) VALUES ($1, $2) RETURNING *`, 
            [staff.id, refresh_token]
          )
        }
        
        if (!isEmpty(staffToken)) {
          await db.query(
            `UPDATE staff_token SET token = $2
            WHERE staffId = $1
            RETURNING *`,
            [staff.id, refresh_token]
          )
        }

        res.status(200).json({access_token, refresh_token, expired_at})
      }
    }
  } catch (err) {
    console.error(err)
    res.status(400).json({errorMessage: err.message})
  }
}

const getStaffs = async (req, res) => {
  try {
    if (req.user) {
      const {restaurantid} = req.user
      const staffs = await db.query(
        `SELECT staff.id, staff.name, gender, date_of_birth, phone, email, role.name AS role FROM staff 
        LEFT JOIN role ON staff.roleid = role.id
        WHERE restaurantid = $1`, 
        [restaurantid]
      )
      const newStaff = staffs.rows
  
      res.status(200).json(newStaff)
    }

  } catch (err) {
    console.error(err)
    res.status(400).json({errorMessage: err.message})
  }
}

const refreshToken = async (req, res) => {
  try {
    const {token} = req.body
    const staffTokens = await db.query(
      `SELECT token FROM staff_token WHERE token = $1`, 
      [token]
    )
    const staffToken = !isEmpty(staffTokens.rows[0])? staffTokens.rows[0] : []

    if (isEmpty(staffToken)) throw new Error('Please log in before continuing.')
    if (!isEmpty(staffToken)) {
      jwt.verify(token, SECRET_REFRESH_TOKEN, function(err, staff) {
        if (err) {
          throw new Error('Please log in before continuing.')
        }
        const {id, name, email, roleid, restaurantid} = staff
        const userJwt = {id, name, email, roleid, restaurantid}
        const {access_token, expired_at} = generateAccessToken(userJwt)
        res.status(200).json({access_token, expired_at})
      });
    }

  } catch (err) {
    console.error(err)
    res.status(400).json({errorMessage: err.message})
  }
}

const logout = async (req, res) => {
  try {
    if (req.user) {
      console.log('--', req.user)
      const {id} = req.user
      const staffTokens = await db.query(
        `DELETE FROM staff_token WHERE staffId = $1
        RETURNING *`, 
        [id]
      )
      const staffToken = !isEmpty(staffTokens.rows[0])? staffTokens.rows[0] : []  
      res.status(200).json(staffToken)
    }

  } catch (err) {
    console.error(err)
    res.status(400).json({errorMessage: err.message})
  }
}


module.exports = {
  register,
  login,
  logout,
  refreshToken,
  getStaffs,
}