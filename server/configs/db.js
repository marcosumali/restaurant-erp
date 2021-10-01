const Pool = require('pg').Pool;

const config = {
  host: "localhost",
  port: 5432,
  database: "restaurant_erp",
}

const pool = new Pool(config)

module.exports = pool;