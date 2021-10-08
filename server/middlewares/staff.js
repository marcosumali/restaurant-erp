const {isEmpty} = require('lodash')
const {
  genSalt,
  hash,
} = require('bcryptjs')

const {getError} = require('../helper/utils')

const {SALTROUNDS} = process.env

const formCompleteness = (req, res, next) => {
  const {name, gender, date_of_birth, phone, email, password, roleId, restaurantId} = req.body
  const incompleteFields = []

  if (!name || name.length <= 0) incompleteFields.push('name')
  if (!gender || gender.length <= 0) incompleteFields.push('gender')
  if (!date_of_birth || date_of_birth.length <= 0) incompleteFields.push('date_of_birth')
  if (!phone || phone.length <= 0) incompleteFields.push('phone')
  if (!email || email.length <= 0) incompleteFields.push('email')
  if (!password || password.length <= 0) incompleteFields.push('password')
  if (!roleId || roleId.length <= 0) incompleteFields.push('roleId')
  if (!restaurantId || restaurantId.length <= 0) incompleteFields.push('restaurantId')

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


module.exports = {
  formCompleteness,
  encryptPassword,
}