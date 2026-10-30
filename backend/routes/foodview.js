var express = require('express'); 
var router = express.Router(); 
var con = require('../db');
router.get('/', (req, res, next) => { 
 
    let query = `SELECT * FROM tbl_food inner join tbl_category on tbl_food.category_id=tbl_category.category_id`; 
    console.log(query); 
    con.query(query, (err, rows) => { 
        if (err) 
            throw err; 
        res.send(rows); 
    }); 
}); 
/* GET users listing. */ 
 
module.exports = router; 