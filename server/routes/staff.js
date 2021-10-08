const express = require('express')

const {
  register,
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


module.exports = router;