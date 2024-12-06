const db = require('../db');

// Fungsi untuk get semua artikel
const getArticles = (req, res) => {
    const query = 'SELECT * FROM articles';

    db.query(query, (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Failed to retrieve articles' });
        }
        res.status(200).json({ articles: results });
    });
};

// Fungsi untuk menambahkan artikel baru
const addArticle = (req, res) => {
    const { title, foto_article, content, author, editor, source, published_date } = req.body;

    // Validasi input (opsional)
    if (!title || !foto_article || !content || !author || !editor || !source || !published_date) {
        return res.status(400).json({ error: 'All fields are required' });
    }

    // Menyusun query untuk menambahkan artikel
    const query = 'INSERT INTO articles (title, foto_article, content, author, editor, source, published_date) VALUES (?, ?, ?, ?, ?, ?, ?)';

    db.query(query, [title, foto_article, content, author, editor, source, published_date], (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Failed to add article' });
        }
        res.status(201).json({ message: 'Article added successfully', articleId: result.insertId });
    });
};

// Fungsi untuk mengambil artikel berdasarkan ID
const getArticleById = (req, res) => {
    const articleId = req.params.id;
    const query = 'SELECT * FROM articles WHERE id = ?';

    db.query(query, [articleId], (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Failed to retrieve article' });
        }
        if (result.length === 0) {
            return res.status(404).json({ error: 'Article not found' });
        }
        res.status(200).json({ article: result[0] });
    });
};

// Fungsi untuk memperbarui artikel
const updateArticle = (req, res) => {
    const articleId = req.params.id;
    const { title, foto_article, content, author, editor, source, published_date } = req.body;

    // Validasi input (opsional, jika ingin memastikan semua field diisi)
    if (!title || !foto_article || !content || !author || !editor || !source || !published_date) {
        return res.status(400).json({ error: 'All fields are required' });
    }

    // Query SQL untuk update artikel
    const query = 'UPDATE articles SET title = ?, foto_article = ?, content = ?, author = ?, editor = ?, source = ?, published_date = ? WHERE id = ?';

    db.query(query, [title, foto_article, content, author, editor, source, published_date, articleId], (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Failed to update article' });
        }
        if (result.affectedRows === 0) {
            return res.status(404).json({ error: 'Article not found' });
        }
        res.status(200).json({ message: 'Article updated successfully' });
    });
};

// Fungsi untuk menghapus artikel
const deleteArticle = (req, res) => {
    const articleId = req.params.id;
    const query = 'DELETE FROM articles WHERE id = ?';

    db.query(query, [articleId], (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Failed to delete article' });
        }
        if (result.affectedRows === 0) {
            return res.status(404).json({ error: 'Article not found' });
        }
        res.status(200).json({ message: 'Article deleted successfully' });
    });
};

module.exports = {
    getArticles,
    addArticle,
    getArticleById,
    updateArticle,
    deleteArticle
};