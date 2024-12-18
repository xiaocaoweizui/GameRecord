var en=require("../modules/poems.js");
//服务类，需要改造实体类的返回
var poemsService=require("../service/poems.js");
var express = require('express');
var router = express.Router();




//http://localhost:3000/poems/query
router.post('/query', function(req, res, next) {
  poemsService.query(req, res, next);
});


module.exports = router;
