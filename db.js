const mysql = require('mysql2');

const isProduction = process.env.NODE_ENV === 'production';

const pool = mysql.createPool({
    host: process.env.DB_HOST || (isProduction ? undefined : 'localhost'),

    port: Number(
        process.env.DB_PORT || (isProduction ? 20187 : 3306)
    ),

    user: process.env.DB_USER || (isProduction ? undefined : 'root'),

    password: isProduction
        ? process.env.DB_PASSWORD 
        : (process.env.LOCAL_DB_PASSWORD || ''),

    database: process.env.DB_NAME || (isProduction ? undefined : 'unibites'),

    ssl: isProduction
        ? (process.env.DB_SSL_CA
            ? { ca: process.env.DB_SSL_CA, rejectUnauthorized: true }
            : { rejectUnauthorized: false })
        : undefined,

    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

pool.on('error', (err) => {
    console.error('MySQL pool error:', err.message);
});

module.exports = pool;
