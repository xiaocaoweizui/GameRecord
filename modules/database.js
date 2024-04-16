var mysql = require('mysql')
var connection = mysql.createConnection({
  host: 'localhost',
  port: 9001,
  user: 'root',
  password: '95938',
  database: 'game',
  multipleStatements:true // 允许执行多条SQL语句
});



module.exports = connection;