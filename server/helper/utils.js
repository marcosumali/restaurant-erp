const { v4: uuidv4 } = require('uuid');

const getUniqueId = () => uuidv4()

// Function to generate set patch queries dynamically
// Example: 
// req.body: {name: 'Test', phone: '123', address: 'xyz'}
// startIndex: 2
// Expected queries: `name = $2, phone = $3, address = $4`
// Expected values: ['Test', '123', 'xyz']
const getPatchSetQueries = (body, index) => {
  let startIndex = index - 1
  const keys = Object.keys(body)
  const setQueries = keys.reduce((total, key, index, arr) => {
    startIndex++
    if (arr.length > 1 && index < arr.length-1) return total += `${key} = $${startIndex}, `
    else return total += `${key} = $${startIndex}`
  }, '')
  const values = Object.values(body)
  
  return {setQueries, values}
}

const getError = (code, errorMessage) => {
  return {
    code,
    error: new Error(errorMessage)
  }
}

module.exports = {
  getUniqueId,
  getPatchSetQueries,
  getError,
}