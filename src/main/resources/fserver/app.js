let express = require('express');
let path = require('path');
let cookieParser = require('cookie-parser');
let logger = require('morgan');

let app = express();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'public'));

let indexRouter = require('./routes/index');
let districtsRouter = require('./routes/districts');
let infoRouter = require('./routes/info');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/districts', districtsRouter);
app.use('/info', infoRouter);

module.exports = app;
