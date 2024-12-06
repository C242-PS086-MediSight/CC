const mysql = require('mysql');


// Konfigurasi koneksi database
const db = mysql.createConnection({
    host: '34.50.74.108',
    user: 'root',
    password: 'Medisight12',
    database: 'medisight'
});

// Hubungkan ke database
db.connect((err) => {
    if (err) {
        console.error('Database connection failed: ' + err.stack);
        return;
    }
    console.log('Connected to database.');
});

module.exports = db;