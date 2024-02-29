
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");


var targetEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "g_target",
        columns: ["id", "target", "start_time","type", "end_time", "status", "amount","remark"],
        queryAll: function (req, res, next) {
            var me=this;
            var isDesc = req.query.isDesc;
            var type = req.query.type;
            var types = req.query.types;
            let pageNum=req.query.page??0;

            let querySQL = " order by start_time   ";
            if (isDesc == 1) {
                querySQL += "desc";
            }
            var whereSQL="";
            if(type!=null){
                whereSQL= "  where type='"+type +"' ";
            }else if(types!=null){
                whereSQL= "  where type in ('"+ types.replace(/\,/g,"','") +"')";
            }
            console.log(types)
            let params={
                orderBy: querySQL,
                where: whereSQL,
                pageNum:pageNum-0
            }
            me.queryWhereAndOrderBy( res, function () {},params)
        }
       
    };
   
    var en= format.deepCopy(entity);
    Object.assign(en, params)

    return en;
}
// cnn.end();
module.exports = targetEntity();