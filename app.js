var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');

var indexRouter = require('./routes/index');
var loginRouter = require('./routes/loginRouter');
var cadastroRouter = require('./routes/cadastroRouter');
var participanteRouter = require('./routes/participanteRouter');
var promotoraRouter = require('./routes/promotoraRouter');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
  secret:"GerenciamentoDeEventos",
  resave:true,
  saveUninitialized:true
}));

app.use('/', indexRouter);
app.use('/', loginRouter);
app.use('/', cadastroRouter);
app.use('/', participanteRouter);
app.use('/', promotoraRouter);

// catch 404 and forward to error handler
app.use((req, res) => {
  return res.status(404).render('404');
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
