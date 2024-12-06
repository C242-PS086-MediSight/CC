const express = require('express');
const mysql = require('mysql2');
const app = express();

// Konfigurasi port
const port = process.env.PORT || 8080;

// Middleware untuk parsing JSON
app.use(express.json());

// Koneksi ke MySQL
const db = mysql.createConnection({
  host: '34.50.74.108',
  user: 'root',
  password: 'Medisight12',
  database: 'medisight'
});

db.connect(err => {
  if (err) {
    console.error('Error connecting to the database:', err);
  } else {
    console.log('Connected to the database');
  }
});

// Middleware untuk favicon
app.get('/favicon.ico', (req, res) => res.status(204).end());

// Route readiness
app.get('/', (req, res) => {
  res.status(200).send('Backend server is running and ready!');
});

// Gunakan route
const router = require('./routes/routes.js');
app.use('/', router);

// Jalankan server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
