var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var myJwt=require('./modules/tools/jwt');

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

//鉴权验证
app.use(function (req, res, next){
  // console.log(req.url);
  if(req.url.indexOf('/login')==-1) {
    let token = req.headers['authorization'];
    // console.log(token);
    if (!token) {
      // 提示 401 访问被拒绝
      // return res.redirect(301,"/");
      return res.status(401).send({
        code: 401,
        msg: 'token is null'
      })
    }
    myJwt.jwt.verify(token,myJwt.SECRET_KEY,(err,decode)=>{
      if (err) {

        console.log(err)
        return res.status(401).send({
          code: 401,
          msg: 'token is incorrent!'
        })
      } else {
        req.user = decode;
        next();
      }
    });
  }else{
    next();
  }

})

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


module.exports = app;
