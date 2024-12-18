
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");


var userEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "g_user",
        columns: ["id", "user_id", "user_level", "school", "logoUrl", "sex", "role_model", "remark"],
        queryAll: function (req, res, next) {
            var me=this;
            me.queryWhereAndOrderBy(res, null, {})
        },
    };
    //继承必须采用深度复制的方式
    var en= format.deepCopy(entity);
    Object.assign(en, params)
    // console.log(en);
    return en;
}
// cnn.end();
module.exports = userEntity();