var express = require('express');
var router = express.Router();
var con = require('../db');


router.get('/', (req, res) => {

   var sql=`select count(bookingmaster_id) as count from tbl_bookingmaster where month(bookingdate)`;
   con.query(sql,(err,rows)=>{
    
   });
});

module.exports = router;