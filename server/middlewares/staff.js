const jwt = require('jsonwebtoken')
const {isEmpty} = require('lodash')
const {
  genSalt,
  hash,
} = require('bcryptjs')

const {getError} = require('../helper/utils')

const {
  SALTROUNDS,
  SECRET_ACCESS_TOKEN,
} = process.env

const formCompleteness = (req, res, next) => {
  const {name, gender, date_of_birth, phone, email, password, roleid, restaurantid} = req.body
  const incompleteFields = []

  if (!name || name.length <= 0) incompleteFields.push('name')
  if (!gender || gender.length <= 0) incompleteFields.push('gender')
  if (!date_of_birth || date_of_birth.length <= 0) incompleteFields.push('date_of_birth')
  if (!phone || phone.length <= 0) incompleteFields.push('phone')
  if (!email || email.length <= 0) incompleteFields.push('email')
  if (!password || password.length <= 0) incompleteFields.push('password')
  if (!roleid || roleid.length <= 0) incompleteFields.push('roleid')
  if (!restaurantid || restaurantid.length <= 0) incompleteFields.push('restaurantid')

  if (isEmpty(incompleteFields)) next()
  if (!isEmpty(incompleteFields)) {
    const string = incompleteFields.reduce((total, value) => total += `${value} `, '')
    const error = getError(400, `Form has missing fields: ${string}`)
    next(error)
  }
}

const encryptPassword = async (req, res, next) => {
  const {password} = req.body

  genSalt(Number(SALTROUNDS), function (err, salt){
    if (err) return next(getError(500, `ERROR: Salt problem`))
    hash(password, salt, function (err, hash){
      if (err) return next(getError(500, `ERROR: Hash problem`))
      req.body.password = hash
      next()
    })
  })
}

const authenticate = async (req, res, next) => {
  const auth = req.headers.authorization
  const token = auth.split(' ')[1]

  if (!token) {
    const error = getError(401, `Please log in before continuing.`)
    next(error)
  }
  if (token) {
    jwt.verify(token, SECRET_ACCESS_TOKEN, function(err, user) {
      if (err) {
        const error = getError(401, `Please log in before continuing.`)
        next(error)
      }
      if (user) req.user = user.data
      next()
    });
  }
}

const managerAuthorisation = async (req, res, next) => {
  if (!req.user) {
    const error = getError(401, `Please log in before continuing.`)
    next(error)
  }
  if (req.user) {
    const {roleid} = req.user
    const ROLE_OWNER = '1'
    const ROLE_MANAGER = '2'

    if (roleid !== ROLE_OWNER && roleid !== ROLE_MANAGER) {
      const error = getError(403, `You're not authorized.`)
      next(error)
    }
    if (roleid === ROLE_OWNER || roleid === ROLE_MANAGER) next()
  }
}


module.exports = {
  formCompleteness,
  encryptPassword,
  authenticate,
  managerAuthorisation,
}