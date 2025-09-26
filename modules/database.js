var mysql = require('mysql')
var connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '95938',
  database: 'game',
  multipleStatements:true // 允许执行多条SQL语句
});

// 确保在程序退出时关闭连接池
// process.on('exit', () => {
//   pool.end((err) => {
//     if (err) console.error('Error closing connection pool:', err);
//     else console.log('Connection pool closed successfully.');
//   });
// });

/*
* 参数化查询
* pool.query(
  'SELECT * FROM users WHERE id = :id AND email = :email',
  { id: userId, email: userEmail },
  (error, results, fields) => {
    if (error) {
      console.error('Error executing query:', error);
      return;
    }
    console.log('Query results:', results);
  }
);
*
* */

module.exports = connection;
