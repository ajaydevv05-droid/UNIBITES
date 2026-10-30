var express = require('express'); 
var router = express.Router(); 
var con = require('../db');
router.get('/', function(req, res, next) {

    let query = 'SELECT * FROM tbl_category';
    console.log(query);

    con.query(query, (err, rows) => {
        if (err) throw err;
        res.send(rows);
    });

});
module.exports = router;