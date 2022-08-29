const devConnection = {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
};

// TODO: create prod connection object
const prodConnection = {};
const pgp = require("pg-promise")();

// TODO: write logic to check if we are in dev or prod environment, pass corresponding connection object
const db = pgp(devConnection);

module.exports = db;
