var express = require('express'); 
var router = express.Router(); 
var con = require('../db');
 
router.post('/', (req, res, next) => { 
  var event_id = req.body.event_id;
    let query = `SELECT * FROM tbl_eventfood where event_id=${event_id}`; 
    console.log(query); 
    con.query(query, (err, rows) => { 
        if (err) 
            throw err; 
        res.send(rows); 
    }); 
}); 
/* GET users listing. */ 
 
module.exports = router; 