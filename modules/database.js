var mysql = require('mysql')
var connection = mysql.createConnection({
  host: 'localhost',
  port: 9001,
  user: 'root',
  password: '95938',
  database: 'game'
});



module.exports = connection;