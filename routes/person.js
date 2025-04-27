var en=require("../modules/person.js");
var express = require('express');
var router = express.Router();
//http://localhost:3000/person/query?id=11
router.get('/query', function(req, res, next) {
  en.query(req, res, null);
});

//http://localhost:3000/person/queryAll
router.get('/queryAll', function(req, res, next) {
  en.queryAll(req, res, next);
});
//http://localhost:3000/person/save
router.post('/save', function(req, res, next) {
  en.saveChanges(req, res, next);
});
//http://localhost:3000/person/login
router.post('/login', function(req, res, next) {
    //验证账户密码
    en.login(req, res, next);
});


module.exports = router;
