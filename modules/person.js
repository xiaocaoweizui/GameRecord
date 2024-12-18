
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
            me.queryWhereAndOrderBy(res, null, {})
        },
        login: function (req, res, next) {
            var code=req.body["code"];
            var password=req.body["password"];

            var sql=`select count(1) as data from life_person where code='${code}' and password='${password}'`;
            console.log(sql);
            cnn.query(sql, [], function (err, result) {
                console.log(result[0].data)
                if(result[0].data==1){
                    var payload={
                        code:code,
                        password:password
                    };
                    res.send({
                        code:200,
                        message:"success",
                        token:myJwt.generateToken(payload)
                    })
                }else{
                     res.send({
                        code: 200,
                        message:"fail",
                        msg: '账户密码错误！'
                    })
                }

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