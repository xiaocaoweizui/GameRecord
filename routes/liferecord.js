
var entity=require("../modules/liferecord.js");
var express = require('express');
var router = express.Router();

/* GET users listing. */
//http://localhost:3000/liferecord/queryAll
router.get('/queryAll', function(req, res, next) {
  entity.queryAll(req, res, next);
});

//http://localhost:3000/liferecord/query?id=11
router.get('/query', function(req, res, next) {
  entity.query(req, res, null);
});

//http://localhost:3000/liferecord/getTotalCount
router.get('/getTotalCount', function(req, res, next) {
  entity.getTotalCount(req, res, next);
});


//http://localhost:3000/liferecord/getTotalCountByDate
router.get('/getTotalCountByDate', function(req, res, next) {
  entity.getTotalCountByDate(req, res, next);
});

//http://localhost:3000/liferecord/query?date=2023-02-01
router.get('/queryByDate', function(req, res, next) {
  entity.queryByDate(req, res, next);
});

//http://localhost:3000/record/insert
router.post('/insert', function(req, res, next) {
  //console.log(req.body.amount);
  entity.insert(req, res, next);
});

//http://localhost:3000/liferecord/update
router.post('/update', function(req, res, next) {
  //console.log(req.body.amount);
  entity.update(req, res, next);
});

//http://localhost:3000/liferecord/del?id=155
router.get('/del', function(req, res, next) {
  entity.del(req, res, next);
});

//http://localhost:3000/liferecord/search?startDate=2021-05-01&endDate=2023-09-04
router.get('/search', function(req, res, next) {
  //console.log(req.body.amount);
  entity.search(req, res, next);
});


module.exports = router;
