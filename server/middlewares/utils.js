const catchError = (err, req, res, next) => {
  if (!err) next()
  if (err) {
    const {code, error} = err
    res.status(code).json({errorMessage: error.message})
  }
}


module.exports = {
  catchError,
}