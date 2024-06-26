var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var userRouter = require('./routes/user');
var recordRouter = require('./routes/record');
var targetRouter = require('./routes/target');
var personRouter = require('./routes/person');
var liferecordRouter = require('./routes/liferecord');
var worktodoRouter = require('./routes/worktodo');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
//通过morgan来记录请求日志
app.use(logger('dev'));
//通过express.json()和express.urlencoded()来解析请求体
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(cookieParser());
app.use('/static',express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/user', userRouter);
app.use('/record', recordRouter);
app.use('/target', targetRouter);
app.use('/person', personRouter);
app.use('/liferecord', liferecordRouter);
app.use('/worktodo', worktodoRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
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
