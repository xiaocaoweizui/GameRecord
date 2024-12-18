

var poemsEntity=require("../modules/poems.js");
var poetryEntity=require("../modules/poetry.js");
const format = require("../modules/format");
const nodejieba = require('nodejs-jieba');

module.exports=(function(){
    return {
        query:function (req, res, next){
            //1、识别关键字，拆分出来分别过滤哪些字段
            var keys=req.body["keys"];
            console.log(keys);
            var tags=['ns','nr','n'];
            nodejieba.load({userDict: __dirname+'\\dict.txt.utf8'});
            // let text = '这是一个伸手不见五指的黑夜。我叫孙悟空，我爱北京，我爱Python和C++。';
            // console.log(nodejieba.cut(text));

            var wordsTags=nodejieba.tag(keys);
            // console.log(wordsTags);
            var words= wordsTags.filter((v)=>tags.includes(v.tag));
            // console.log(words);
            var params={
                author:words.filter(v=>v.tag==="nr").map(v=>v.word),
                title:words.filter(v=>v.tag==="ns").map(v=>v.word),
                content:words.filter(v=>v.tag=='n').map(v=>v.word),
                pageNum:req.body["pageNum"]
            }
            // console.log(words.filter(v=>v.tag=='n'));
           poemsEntity.queryWhere(req, res, function(data){
                //如果需要处理单独处理
               poetryEntity.queryWhere(req, res, function(poetryData){
                    // console.log(data);
                    // console.log(poetryData);

                   format.returnJson(res, null, data.concat(poetryData));

               },params)
           },params);
        }
    }
})();