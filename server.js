require('dotenv').config();
const express = require('express');
const cors = require('cors');
const path = require('path');
const authMiddleware = require('./middleware/authMiddleware');
const authRoutes = require('./routes/authRoutes');
const profileRoutes = require('./routes/profileRoutes');
const userRoutes = require('./routes/userRoutes');
const prospectingRoutes = require('./routes/prospectingRoutes');
const canvasingRoutes = require('./routes/canvasingRoutes');
const crosssellingRoutes = require('./routes/crosssellingRoutes');
const taklimRoutes = require('./routes/taklimRoutes');

const app = express();
const PORT = process.env.PORT || 5000;

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true })); // Tambahkan ini untuk form-data

// Serve static files from uploads directory
app.use('/alhikmah/uploads', express.static(path.join(__dirname, 'uploads')));

// Debug middleware untuk melihat request yang masuk
app.use((req, res, next) => {
    // console.log('Request Method:', req.method);
    // console.log('Request URL:', req.url);
    // console.log('Request Headers:', req.headers);
    // console.log('Request Body:', req.body);
    next();
});

// Gunakan Routes
app.use('/alhikmah', authRoutes);
app.use('/alhikmah', profileRoutes);
app.use('/alhikmah/users', userRoutes);
app.use('/alhikmah/prospecting', prospectingRoutes);
app.use('/alhikmah/canvasing', canvasingRoutes);
app.use('/alhikmah/crossselling', crosssellingRoutes);
app.use('/alhikmah/taklim', taklimRoutes);

// Endpoint yang membutuhkan autentikasi
app.get('/some-secured-endpoint', authMiddleware, (req, res) => {
    res.json({ message: 'Anda berhasil mengakses endpoint ini', user: req.user });
});

// Error handling middleware
app.use((err, req, res, next) => {
    console.error('Error:', err);
    res.status(500).json({ 
        status: 'error', 
        message: 'Terjadi kesalahan pada server',
        error: err.message 
    });
});

// Jalankan server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
