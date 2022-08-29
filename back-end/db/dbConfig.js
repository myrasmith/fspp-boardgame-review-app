const devConnection = {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
};

const prodConnection = {
  connectionString: process.env.DATABASE_URL,
  max: 30,
  ssl: {
    rejectUnauthorized: false,
  },
};

const pgp = require("pg-promise")();

// TODO: write logic to check if we are in dev or prod environment, pass corresponding connection object
const db = pgp(process.env.DATABASE_URL ? prodConnection : devConnection);

module.exports = db;
