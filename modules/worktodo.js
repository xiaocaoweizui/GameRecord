var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");
const cnn = require("./database");


var worktodoEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "work_todo",
        columns: ["id", "title", "status", "cur_date"],

        query: function (req, res, next) {
            var me = this;
            var month = req.query.month;
            var year = req.query.year;
            let orderBySQL = " order by cur_date    ";
            let querySQL = `  where MONTH(cur_date)=${month} and YEAR(cur_date)=${year} `;
            let params = {
                orderBy: orderBySQL,
                where: querySQL
            }

            me.queryWhereAndOrderBy(res, null, params)
        },
        delete:function(req,res,next){
            var me = this;
            var day = req.query.day;
            var sql = `delete
                   from ${me.tableName}
                   where cur_date = '${day}'`;
            cnn.query(sql, [], function (err, result) {
                format.returnJson(res, err, result);
            })
        },
        save: function (req, res, next) {
            let me = this;
            //默认取值data=[{col1:val1,col2:val2...}]
            let sql = "";
            let day="";
            let insertSQL="";

            _.each(req.body["data"], item => {
                let colSql = "";
                let valSQL = "";
                 day = item["cur_date"];
                _.each(item, (value, key) => {
                    if (me.columns.indexOf(key) < 0) {
                        console.log(key + "列不在columns里面");
                    }
                    if (colSql === "") {
                        colSql += key;
                    } else {
                        colSql += "," + key;
                    }

                    if (valSQL === "") {
                        valSQL += "'" + value + "'";
                    } else {
                        valSQL += ",'" + value + "'";
                    }
                })

                 insertSQL += `insert into ${me.tableName}(${me.primaryKey}, ${colSql}) values (UUID(), ${valSQL});`;
              
            })
            let delSql = `delete from ${me.tableName} where cur_date = '${day}';`;
            sql = delSql + insertSQL;
            console.log(sql);
            cnn.query(sql, [], function (err, result) {
                format.returnJson(res, err, result);
            })
        }

    };

    var en = format.deepCopy(entity);
    Object.assign(en, params)
    return en;
}
// cnn.end();
module.exports = worktodoEntity();