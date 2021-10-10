const jwt = require('jsonwebtoken')

const {
  SECRET_ACCESS_TOKEN,
  SECRET_REFRESH_TOKEN,
} = process.env

const generateAccessToken = (data) => {
  const expiredIn = 60 * 60 // 1 hour in seconds
  const now = Date.now()
  const expiredAtSeconds = Math.floor(now / 1000) + (expiredIn)
  const expired_at = new Date(now).toISOString()

  const access_token = jwt.sign({exp: expiredAtSeconds, data}, SECRET_ACCESS_TOKEN)

  return {access_token, expired_at}
}

const generateRefreshToken = (data) => jwt.sign(data, SECRET_REFRESH_TOKEN)


module.exports = {
  generateAccessToken,
  generateRefreshToken,
}