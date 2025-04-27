
var entity=require("../modules/target.js");
var express = require('express');
var router = express.Router();

/* GET users listing. */
//http://localhost:3000/record/queryAll
router.get('/queryAll', function(req, res, next) {
  entity.queryAll(req, res, next);
});

//http://localhost:3000/record/query?id=11
router.get('/query', function(req, res, next) {
  entity.query(req, res, null);
});

//http://localhost:3000/record/getTotalCount
router.get('/getTotalCount', function(req, res, next) {
  entity.getTotalCount(req, res, next);
});


//http://localhost:3000/record/insert
router.post('/insert', function(req, res, next) {
  //console.log(req.body.amount);
  entity.insert(req, res, next);
});

//http://localhost:3000/record/update
router.post('/update', function(req, res, next) {
  //console.log(req.body.amount);
  entity.update(req, res, next);
});

//http://localhost:3000/record/del?id=155
router.get('/del', function(req, res, next) {
  entity.del(req, res, next);
});



module.exports = router;
