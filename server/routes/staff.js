const express = require('express')

const {
  register,
  login,
} = require('../controllers/staff')
const {
  formCompleteness,
  encryptPassword,
} = require('../middlewares/staff')
const {
  catchError,
} = require('../middlewares/utils')

const router = express.Router()

router
  .post('/register', formCompleteness, encryptPassword, catchError, register)
  .post('/login', login)


module.exports = router;