let express = require('express');
let path = require('path');
let cookieParser = require('cookie-parser');
let logger = require('morgan');
let session = require('express-session');
let flash = require('express-flash');

let app = express();
let sessionStore = new session.MemoryStore;

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'public'));

app.use(cookieParser('qwerty007'));
app.use(session({
    cookie: { maxAge: 60000 },
    store: sessionStore,
    saveUninitialized: true,
    resave: 'true',
    secret: 'qwerty007'
}));
app.use(flash());

let indexRouter = require('./routes/index');
let districtsRouter = require('./routes/districts');
let infoRouter = require('./routes/info');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(req, res, next){
    // if there's a flash message in the session request, make it available in the response, then delete it
    res.locals.sessionFlash = req.session.sessionFlash;
    delete req.session.sessionFlash;
    next();
});

app.use('/', indexRouter);
app.use('/districts', districtsRouter);
app.use('/info', infoRouter);

module.exports = app;
