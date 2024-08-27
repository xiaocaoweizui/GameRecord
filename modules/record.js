
var format = require("./format.js");
var _ = require("underscore");
var entity = require("./entity.js");


var recordEntity = function () {
    var params = {
        primaryKey: "id",
        tableName: "g_record",
        columns: ["id", "day_amount", "record_time", "amount", "user_id", "remark", "week"],
        search: function (req, res, next) {
            var me = this;
            var isDesc = req.query.isDesc;
            let startDate = req.query.startDate;
            let endDate = req.query.endDate;
            let pageNum = req.query.page ?? 0;
            let querySQL = `  where DateDiff(record_time,'${startDate}')>=0    `;
            if (endDate != "") {
                querySQL += ` and DateDiff(record_time,'${endDate}')<=0`;
            }
            let orderBySQL = " order by record_time    ";
            if (isDesc == 1) {
                orderBySQL += "desc";
            }
            let params = {
                orderBy: orderBySQL,
                where: querySQL,
                pageNum: pageNum - 0
            };
            me.queryWhereAndOrderBy(res, function (result) {
                _.each(result, function (item) {
                    item.weekRange = format.getWeekRange(item.record_time);
                })
            }, params);
        },
        queryByDate: function (req, res, next) {
            var me = this;
            let date = req.query.date;
            let pageNum = req.query.page ?? 0;
            let querySQL = `  where DateDiff(record_time,'${date}')=0  `;
            let params = {
                where: querySQL,
                pageNum: pageNum - 0
            };
            me.queryWhere(res, next, params);
        },
        queryAll: function (req, res, next) {
            var me = this;
            var isDesc = req.query.isDesc;
            let pageNum = req.query.page ?? 0;

            let querySQL = " order by record_time    ";
            if (isDesc == 1) {
                querySQL += "desc";
            }
            let params = {
                orderBy: querySQL,
                pageNum: pageNum - 0
            }
            me.queryWhereAndOrderBy(res, function (result) {
                _.each(result, function (item) {
                    item.weekRange = format.getWeekRange(item.record_time);
                })
            }, params)
        },
        getTotalCountByDate: function (req, res, next) {
            let me = this;
            let startDate = req.query.startDate;
            let endDate = req.query.endDate;
            let querySQL = `  where DateDiff(record_time,'${startDate}')>=0  `
            if(endDate != null &&  endDate !=''){
                querySQL+=` and DateDiff(record_time,'${endDate}')<=0  `;
            }
            let params = {
                where: querySQL
            };
            me.getTotalCount(req, res, params);
        }
    };

    var en = format.deepCopy(entity);
    Object.assign(en, params)
    // console.log(en);
    return en;
}
// cnn.end();
module.exports = recordEntity();