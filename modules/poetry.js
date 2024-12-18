
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");


var userEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "poetry",
        columns: ["id", "author_id", "title", "content", "author","dynasty"],
        queryWhere: function (req,res, next, params) {
            var me=this;
            let pageNum = req.query.page ?? 0;
            pageNum=params.pageNum ?? pageNum;

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
    // console.log(en);
    return en;
}
// cnn.end();
module.exports = userEntity();