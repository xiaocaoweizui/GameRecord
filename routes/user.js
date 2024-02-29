var en=require("../modules/user.js");
var express = require('express');
var router = express.Router();


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get('/test2', function(req, res, next) {
  res.send('test2');
});

//http://localhost:3000/user/query?id=11
router.get('/query', function(req, res, next) {
  en.query(req, res, next);
});

//http://localhost:3000/user/queryAll
router.get('/queryAll', function(req, res, next) {
  en.queryAll(req, res, next);
});


module.exports = router;
