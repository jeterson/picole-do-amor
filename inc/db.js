const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'us-cdbr-iron-east-05.cleardb.net',
    user: 'b47b1f0edd0397',
    database: 'heroku_3e4f2a7e282052e',
    password: 'bc1d46e6',
    multipleStatements: true
});

module.exports = connection;