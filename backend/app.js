
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var loginrouter = require('./routes/login');
var upload = require('./routes/upload');

var categoryregistration = require('./routes/categoryregistration');
var categoryview = require('./routes/categoryview');
var deletecategory = require('./routes/deletecategory');
var editcategory = require('./routes/editcategory');
var updatecategory = require('./routes/updatecategory');
var categoryget = require('./routes/categoryget');
var getcategorybyid = require('./routes/getcategorybyid');

var staffregistration = require('./routes/staffregistration');
var staffview = require('./routes/staffview');
var deletestaff = require('./routes/deletestaff');
var editstaff = require('./routes/editstaff');
var updatestaff = require('./routes/updatestaff');

var foodregistration = require('./routes/foodregistration');
var foodview = require('./routes/foodview');
var foodsingle = require('./routes/foodsingle');
var fooddelete = require('./routes/fooddelete');

var studentregistration = require('./routes/studentregistration');
var singleview = require('./routes/singleview');

var insertcart = require('./routes/insertcart');
var cartview = require('./routes/cartview');
var placeorder = require('./routes/placeorder');
var placepayment = require('./routes/placepayment');
var orderview = require('./routes/orderview');
var stafforder = require('./routes/stafforder');
var orderview1 = require('./routes/orderview1');
var monthlypayment = require('./routes/monthlypayment');
var updatestock = require('./routes/updatestock');
var recentorders = require('./routes/recentorders');
var viewdetails = require('./routes/viewdetails');
var getcustomer = require('./routes/getcustomer');
var completed = require('./routes/completed');

var customerpayment = require('./routes/customerpayments');
var submitfeedback = require('./routes/submitfeedback');
var feedbackview = require('./routes/feedbackview');
var singlefeedback = require('./routes/singlefeedback');

var paymentreport = require('./routes/paymentreport');
var salesreport = require('./routes/salesreport');
var staffpayment = require('./routes/staffpayment');
var getSalesReport = require('./routes/getSalesReport');

var insertevent = require('./routes/insertevent');
var eventfoodreg = require('./routes/eventfoodreg');
var geteventfoods = require('./routes/geteventfoods');
var deletteeventfood = require('./routes/deleteeventfood');
var eventwithfood = require('./routes/eventwithfood');
var eventvote = require('./routes/eventvote');
var eventresults = require('./routes/eventresults');

var adminhome = require('./routes/adminhome');
var verify = require('./routes/verify');
var send = require('./routes/send');

var app = express();

// Middleware
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(cors());

// Static files
app.use(express.static(path.join(__dirname, 'public')));

global.__basedir = path.resolve(__dirname);

// Routes
app.use('/login', loginrouter);
app.use('/upload', upload);

app.use('/categoryregistration', categoryregistration);
app.use('/categoryview', categoryview);
app.use('/deletecategory', deletecategory);
app.use('/editcategory', editcategory);
app.use('/updatecategory', updatecategory);
app.use('/categoryget', categoryget);
app.use('/getcategorybyid', getcategorybyid);

app.use('/staffregistration', staffregistration);
app.use('/staffview', staffview);
app.use('/deletestaff', deletestaff);
app.use('/editstaff', editstaff);
app.use('/updatestaff', updatestaff);

app.use('/foodregistration', foodregistration);
app.use('/foodview', foodview);
app.use('/foodsingle', foodsingle);
app.use('/fooddelete', fooddelete);

app.use('/studentregistration', studentregistration);
app.use('/singleview', singleview);

app.use('/insertcart', insertcart);
app.use('/cartview', cartview);
app.use('/placeorder', placeorder);
app.use('/placepayment', placepayment);
app.use('/orderview', orderview);
app.use('/stafforder', stafforder);
app.use('/orderview1', orderview1);
app.use('/monthlypayment', monthlypayment);
app.use('/updatestock', updatestock);
app.use('/recentorders', recentorders);
app.use('/viewdetails', viewdetails);
app.use('/getcustomer', getcustomer);
app.use('/completed', completed);

app.use('/customerpayment', customerpayment);
app.use('/submitfeedback', submitfeedback);
app.use('/feedbackview', feedbackview);
app.use('/singlefeedback', singlefeedback);

app.use('/paymentreport', paymentreport);
app.use('/salesreport', salesreport);
app.use('/staffpayment', staffpayment);
app.use('/getSalesReport', getSalesReport);

app.use('/insertevent', insertevent);
app.use('/eventfoodreg', eventfoodreg);
app.use('/geteventfoods', geteventfoods);
app.use('/deleteeventfood', deletteeventfood);
app.use('/eventwithfood', eventwithfood);
app.use('/eventvote', eventvote);
app.use('/eventresults', eventresults);

app.use('/adminhome', adminhome);
app.use('/verify', verify);
app.use('/send', send);

// Default routes
app.use('/', indexRouter);
app.use('/users', usersRouter);

module.exports = app;
