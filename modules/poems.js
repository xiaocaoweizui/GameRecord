
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");


var ObjEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "poems",
        columns: ["id", "author_id", "title", "content", "author"],
        queryAll: function (req, res, next) {
            var me=this;
            me.queryWhereAndOrderBy(res, null, {})
        },
        queryWhere: function (req,res, next, params) {
            var me=this;
            let pageNum = req.query.page ?? 0;
            pageNum=params.pageNum ?? pageNum;
            console.log("params:author :"+ params.author);
            console.log("params:title :"+ params.title);
            console.log("params:content :"+ params.content);


            var where = [];
            if (params.author) {
                where.push("author like '%" + params.author + "%'");
            }
            if (params.title) {
                where.push("title like '%" + params.title + "%'");
            }
            if (params.content) {
                where.push("content like '%" + params.content + "%'");
            }
            let obj = {
                where:" where  " + where.join(" and "),
                pageNum: pageNum - 0
            };

            me.queryWhereAndOrderBy(res,next, obj)
        }

    };
    //继承必须采用深度复制的方式
    var en= format.deepCopy(entity);
    Object.assign(en, params)

    return en;
}
// cnn.end();
module.exports = ObjEntity();