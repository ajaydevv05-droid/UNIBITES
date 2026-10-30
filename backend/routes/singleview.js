var express = require('express');
var router = express.Router();
var con = require('../db');

router.post('/', (req, res, next) => {
    var category_id = req.body.category_id;
    let query = `SELECT * FROM tbl_food where category_id=${category_id}`;
    console.log(query);
    con.query(query, (err, rows) => {
        if (err)
            throw err;
        res.send(rows);
    });
});
/* GET users listing. */

module.exports = router; 