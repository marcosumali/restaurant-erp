const express = require('express')

const {
  register,
  login,
  getStaffs,
  refreshToken,
  logout,
} = require('../controllers/staff')
const {
  formCompleteness,
  encryptPassword,
  authenticate,
  managerAuthorisation,
} = require('../middlewares/staff')
const {
  catchError,
} = require('../middlewares/utils')

const router = express.Router()

router
  .post('/register', formCompleteness, encryptPassword, catchError, register)
  .post('/login', login)
  .get('/logout', authenticate, catchError, logout)
  .post('/refreshToken', refreshToken)
  .get('/', authenticate, managerAuthorisation, catchError, getStaffs)
  

module.exports = router;