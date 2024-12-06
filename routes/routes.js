const express = require('express');
const router = express.Router();
const articleController = require('../controllers/articleController');
const faskesController = require('../controllers/faskesController');
const db = require('../db'); 
const { getMedicalHistory, getMedicalHistoryById, addMedicalHistory, updateMedicalHistory, deleteMedicalHistory } = require('../controllers/medicalHistoryController');
const { getObat, getObatById, addObat } = require('../controllers/obatController');

router.get('/', (req, res) => {
    res.status(200).json({ message: "backend jalan"});
})

// Route untuk mendapatkan semua artikel
router.get('/article', articleController.getArticles);

// Route untuk menambahkan artikel baru
router.post('/addArticle', articleController.addArticle);

// Route untuk mendapatkan artikel berdasarkan ID
router.get('/article/:id', articleController.getArticleById);

// Route untuk memperbarui artikel berdasarkan ID
router.put('/editArticle/:id', articleController.updateArticle);

// Route untuk menghapus artikel berdasarkan ID
router.delete('/deleteArticle/:id', articleController.deleteArticle);



// GET: Mengambil semua data faskes
router.get('/faskes', faskesController.getFaskes);

// GET: Mengambil data faskes berdasarkan ID
router.get('/faskes/:id', faskesController.getFaskesById);

// POST: Menambahkan data faskes
router.post('/addFaskes', faskesController.addFaskes);




// Get all luka
router.get('/luka', (req, res) => {
    db.query(
        "SELECT * FROM luka",
        (err, results) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            res.status(200).json(results);
        }
    );
});

// Get specific luka by ID
router.get('/luka/:id', (req, res) => {
    const { id } = req.params;

    db.query(
        "SELECT * FROM luka WHERE id = ?",
        [id],
        (err, results) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            if (results.length === 0) return res.status(404).json({ message: 'Luka not found' });
            res.status(200).json(results[0]);
        }
    );
});

// Create new luka
router.post('/addLuka', (req, res) => {
    const { jenis_luka, langkah_penanganan, tips_tambahan } = req.body;

    if (!jenis_luka || !langkah_penanganan || !tips_tambahan) {
        return res.status(400).json({ message: 'All fields are required' });
    }

    db.query(
        "INSERT INTO luka (jenis_luka, langkah_penanganan, tips_tambahan) VALUES (?, ?, ?)",
        [jenis_luka, langkah_penanganan, tips_tambahan],
        (err) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            res.status(201).json({ message: 'Luka created successfully' });
        }
    );
});

// Update luka by ID
router.put('/updateLuka/:id', (req, res) => {
    const { id } = req.params;
    const { jenis_luka, langkah_penanganan, tips_tambahan } = req.body;

    db.query(
        "UPDATE luka SET jenis_luka = ?, langkah_penanganan = ?, tips_tambahan = ? WHERE id = ?",
        [jenis_luka, langkah_penanganan, tips_tambahan, id],
        (err) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            res.status(200).json({ message: 'Luka updated successfully' });
        }
    );
});

// Delete luka by ID
router.delete('/deleteLuka/:id', (req, res) => {
    const { id } = req.params;

    db.query("DELETE FROM luka WHERE id = ?", [id], (err) => {
        if (err) return res.status(500).json({ message: 'Database error' });
        res.status(200).json({ message: 'Luka deleted successfully' });
    });
});




// Mendapatkan semua data medical history
router.get('/medical', getMedicalHistory);

// Mendapatkan data medical history berdasarkan id
router.get('/medical/:id', getMedicalHistoryById);

// Menambahkan data medical history baru
router.post('/addMedical', addMedicalHistory);

// Memperbarui data medical history berdasarkan id
router.put('/editMedical/:id', updateMedicalHistory);

// Menghapus data medical history berdasarkan id
router.delete('/deleteMedical/:id', deleteMedicalHistory);




// Mendapatkan semua obat
router.get('/obat', getObat);

// Mendapatkan obat berdasarkan id
router.get('/obat/:id', getObatById);

// Menambahkan obat baru
router.post('/addObat', addObat);




// Get all users
router.get('/user', (req, res) => {
    db.query(
        "SELECT * FROM users",
        (err, results) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            res.status(200).json(results);
        }
    );
});

router.get('/user/:id', (req, res) => {
    const userId = req.params.id;  // Mengambil ID dari parameter URL

    db.query(
        "SELECT * FROM users WHERE id = ?",
        [userId],  // Menggunakan parameter untuk menghindari SQL Injection
        (err, results) => {
            if (err) {
                console.error(err);
                return res.status(500).json({ message: 'Database error' });
            }
            if (results.length === 0) {
                return res.status(404).json({ message: 'User not found' });
            }
            res.status(200).json(results[0]);  // Mengirimkan user yang ditemukan
        }
    );
});

// Create user
router.post('/addUser', (req, res) => {
    const { user_profile, fullname, phoneNumber, dateOfBirth, address } = req.body;

    // Validasi input
    if (!user_profile || !fullname || !phoneNumber || !dateOfBirth || !address) {
        return res.status(400).json({ message: 'All fields are required' });
    }

    // Query SQL yang dimodifikasi
    db.query(
        "INSERT INTO users (user_profile, fullname, phoneNumber, dateOfBirth, address) VALUES (?, ?, ?, ?, ?)",
        [user_profile, fullname, phoneNumber, dateOfBirth, address],
        (err) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            res.status(201).json({ message: 'User created successfully' });
        }
    );
});

// Update user
router.put('/updateUser/:id', (req, res) => {
    const { id } = req.params;
    const { user_profile, fullname, phoneNumber, dateOfBirth, address } = req.body;

    // Validasi input (opsional, jika ingin memeriksa semua field)
    if (!user_profile || !fullname || !phoneNumber || !dateOfBirth || !address) {
        return res.status(400).json({ message: 'All fields are required' });
    }

    db.query(
        "UPDATE users SET user_profile = ?, fullname = ?, phoneNumber = ?, dateOfBirth = ?, address = ? WHERE id = ?",
        [user_profile, fullname, phoneNumber, dateOfBirth, address, id],
        (err) => {
            if (err) return res.status(500).json({ message: 'Database error' });
            res.status(200).json({ message: 'User updated successfully' });
        }
    );
});

// Delete user
router.delete('/deleteUser/:id', (req, res) => {
    const { id } = req.params;

    db.query("DELETE FROM users WHERE id = ?", [id], (err) => {
        if (err) return res.status(500).json({ message: 'Database error' });
        res.status(200).json({ message: 'User deleted successfully' });
    });
});

module.exports = router;