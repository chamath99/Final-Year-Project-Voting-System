var mysql = require('mysql2');

var connection = mysql.createConnection({
  host     : process.env.HOST,
  user     : "root",
  password : "Chamath@207",
  database : "evote",
  multipleStatements: true
});
 
connection.connect(function(error){
	if(!!error) {
		console.log(error);
	} else {
		console.log('Database Connected Successfully..!!');
	}
});

module.exports = connection;