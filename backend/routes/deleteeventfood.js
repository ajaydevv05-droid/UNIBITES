var express = require('express'); 
var router = express.Router(); 
var con = require('../db');
router.post('/', (req, res, next) => { 
    var id = req.body.eventfood_id; 
    let query = `delete from tbl_eventfood where eventfood_id='${id}'`; 
    console.log(query); 
    con.query(query, (err, rows) => { 
        if (err) 
            throw err; 
        res.send({message:'success'}); 
    }); 
}); 
module.exports = router;