const mysql = require("mysql2/promise");

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "",
  database: "fullstack-elearning",
  port: 3310, //3306,
  namedPlaceholders: true,
});
module.exports = db;
