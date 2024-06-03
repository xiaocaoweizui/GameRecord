
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");
var myJwt=require("./tools/jwt.js");
const cnn = require("./database");

var personEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "life_person",
        columns: ["id", "name",  "logoUrl", "sex", "remark","password","code"],
        queryAll: function (req, res, next) {
            var me=this;
            me.queryWhereAndOrderBy(res, o => { }, {})
        },
        login: function (req, res, next) {
            var code=req.body["code"];
            var password=req.body["password"];
            var sql=`select count(1) from life_person where name='${code}' and password='${password}'`;
            cnn.query(sql, [], function (err, result) {
                var payload={
                    code:code,
                    password:password
                };
                res.send({
                    code:200,
                    message:"success",
                    token:myJwt.generateToken(payload)
                })
            })


        }
    };
    //继承必须采用深度复制的方式
    var en= format.deepCopy(entity);
    Object.assign(en, params)
    return en;
}
// cnn.end();
module.exports = personEntity();