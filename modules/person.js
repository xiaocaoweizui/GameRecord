
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");


var personEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "life_person",
        columns: ["id", "name",  "logoUrl", "sex", "remark"],
        queryAll: function (req, res, next) {
            var me=this;
            me.queryWhereAndOrderBy(res, o => { }, {})
        },
    };
    //继承必须采用深度复制的方式
    var en= format.deepCopy(entity);
    Object.assign(en, params)
    // console.log(en);
    return en;
}
// cnn.end();
module.exports = personEntity();