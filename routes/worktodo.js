var en=require("../modules/worktodo.js");
var express = require('express');
var router = express.Router();


//http://localhost:3000/worktodo/query?month=11
router.get('/query', function(req, res, next) {
  en.query(req, res, next);
});


//http://localhost:3000/worktodo/insert
router.post('/insert', function(req, res, next) {
  //console.log(req.body.amount);
  en.insert(req, res, next);
});

//http://localhost:3000/worktodo/update
router.post('/update', function(req, res, next) {
  //console.log(req.body.amount);
  en.update(req, res, next);
});

//http://localhost:3000/worktodo/del?day=155
router.delete('/del', function(req, res, next) {
  en.delete(req, res, next);
});

//http://localhost:3000/worktodo/save
//data=[{col1:val1,col2:val2...}]
router.post('/save', function(req, res, next) {
  en.save(req, res, next);
});

module.exports = router;
