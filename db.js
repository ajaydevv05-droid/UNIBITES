
const mysql = require('mysql2');

const isProduction = process.env.NODE_ENV === 'production';

const pool = mysql.createPool({
    host: isProduction
        ? (process.env.DB_HOST || 'mysql-91d7952-ajaydevv05-1df8.e.aivencloud.com')
        : (process.env.DB_HOST || 'localhost'),

    port: Number(
        process.env.DB_PORT || (isProduction ? 20187 : 3306)
    ),

    user: isProduction
        ? (process.env.DB_USER || 'avnadmin')
        : (process.env.DB_USER || 'root'),

    password:isProduction
        ? process.env.DB_PASSWORD 
        : (process.env.LOCAL_DB_PASSWORD|| ''),

    database: isProduction
        ? (process.env.DB_NAME || 'defaultdb')
        : (process.env.DB_NAME || 'unibites'),

    ssl: isProduction
        ? {
            ca: process.env.DB_SSL_CA,
            rejectUnauthorized: true
        }
        : undefined,

    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

pool.on('error', (err) => {
    console.error('MySQL pool error:', err.message);
});

module.exports = pool;
