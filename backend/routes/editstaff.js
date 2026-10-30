var express = require('express'); 
var router = express.Router(); 
var con = require('../db');
router.post('/', (req, res, next) => { 
    var id = req.body.staff_id; 
    let query = `select * from tbl_collegestaff where staff_id='${id}'`; 
    console.log(query); 
    con.query(query, (err, rows) => { 
        if (err) 
            throw err; 
        res.send(rows); 
    }); 
}); 
module.exports = router;