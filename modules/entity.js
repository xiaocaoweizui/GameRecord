var cnn = require("./database.js");
var format = require("./format.js");
var _ = require("underscore");

cnn.connect();
var entity = {
    primaryKey: "",
    tableName: "",
    columns: [],
    getColumnsStr: function () {
        return this.columns.toString(',');
    },
    getPageSQL: function (sql, params) {
        let isPage = (params.pageNum > 0);
        //默认分页15条数据每页
        let pageCount = params.pageCount != undefined ? params.pageCount : 15;

        if (isPage) {
            let startPageNum = pageCount * (params.pageNum - 1) - 0;
            let pageSQL = ` limit ${startPageNum}, ${pageCount}`;

            sql += pageSQL;
        }

        return sql;
    },
    getTotalCount: function (req, res, params) {
        let me = this;
        let where = params.where ?? "";
        let querySQL = `Select COUNT(1) as totalcount
                        from ${me.tableName} ${where}`;
        console.log(querySQL);
        cnn.query(querySQL, function (err, result) {
            format.returnJson(res, err, result[0]);
        })
    },
    query: function (req, res, next) {
        let me = this;
        let id = req.query[me.primaryKey];
        let querySQL = `Select ${me.getColumnsStr()}
                        from ${me.tableName}
                        where ${me.primaryKey} = '${id}'  `;
        console.log(querySQL);
        cnn.query(querySQL, function (err, result) {

           if(typeof(next)=="function"){
               next(result[0]);
           }else{
               format.returnJson(res, err, result[0]);
           }
        })
    },
    queryWhere: function (res, next, params) {
        /**
         * params:{
         * where: ""
         * ordeby:""
         * pageCount:"" --分页每页数量
         * pageNum:"" --第几页
         * }
         */
        let me = this;
        let where = params.where ?? "";
        let querySQL = `Select ${this.getColumnsStr()}
                        from ${me.tableName} ${where}`;

        querySQL = this.getPageSQL(querySQL, params);

        cnn.query(querySQL, function (err, result) {
            let data = result != undefined ? result[0] : {};
            format.returnJson(res, err, data);
            next(data);
        })
    },
    queryWhereAndOrderBy: function (res, next, params) {
        var me = this;
        var orderBy = params.orderBy == undefined ? "" : params.orderBy;
        var where = params.where == undefined ? "" : params.where;
        let querySQL = `Select ${me.getColumnsStr()}
                        from ${me.tableName} ${where} ${orderBy} `;
        querySQL = this.getPageSQL(querySQL, params);

        console.log(querySQL)
        cnn.query(querySQL, function (err, result) {

            console.log(typeof(next))
            if(typeof(next)=="function"){
                next(result);
            }else{
                format.returnJson(res, err, result);
            }

        })
    },
    update: function (req, res, next) {
        var me = this;
        var sql = "";
        _.each(me.columns, col => {
            if (col != me.primaryKey && req.body[col] !== undefined) {
                if (sql != "") {
                    sql += ","
                }
                if (req.body[col] === null) {
                    sql += col + "=null";
                } else {
                    sql += col + "='" + req.body[col] + "'";
                }
            }
        })
        var key = req.body[this.primaryKey];
        var updateSQL = `update ${me.tableName}
                         set ${sql}
                         where ${me.primaryKey} = '${key}'`;
        // console.log(updateSQL);
        cnn.query(updateSQL, [], function (err, result) {
            format.returnJson(res, err, result);
        })
    },
    insert: function (req, res, next) {
        var me = this;
        var sql = "";
        var valSQL = "";
        _.each(me.columns, col => {
            if (col != this.primaryKey && req.body[col] != undefined) {
                sql += "," + col;
                valSQL += ",'" + req.body[col] + "'";
            }
        })

        var insertSQL = `insert into ${me.tableName}(${me.primaryKey} ${sql})
                         values (UUID() ${valSQL})`;
        cnn.query(insertSQL, [], function (err, result) {
            format.returnJson(res, err, result);
        })
    },
    del: function (req, res, next) {
        var me = this;
        var id = req.query[me.primaryKey];
        var sql = `delete
                   from ${me.tableName}
                   where ${me.primaryKey} = '${id}'`;
        cnn.query(sql, [], function (err, result) {
            format.returnJson(res, err, result);
        })
    },
    saveChanges: function (req, res, next) {
        let me = this;
        //默认取值data=[{col1:val1,col2:val2...}]
        let sql = "";
        console.log(req.body);

        let colSql = "";
        let valSQL = "";
        let primaryKey = req.body[me.primaryKey];
        _.each(req.body, (value, key) => {
            //todo 需要判断列是否在columns里面
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
        //主键存在，先考虑删除后插入
        if (primaryKey !== undefined) {
            let delSql = `delete
                          from ${me.tableName}
                          where ${me.primaryKey} = '${primaryKey}';`;
            let insertSQL = `insert into ${me.tableName}(${colSql})
                             values (${valSQL});`;
            sql += delSql + insertSQL;
        } else {
            sql = `insert into ${me.tableName}(${me.primaryKey}, ${colSql})
                   values (UUID(), ${valSQL})`;
        }

        // 后续考虑事务
        // cnn.beginTransaction((err)=>{
        //     if(err){
        //         cnn.rollback();
        //         return;
        //     }
        // })
        cnn.query(sql, [], function (err, result) {
            format.returnJson(res, err, result);
        })
    }
}
// cnn.end();
module.exports = entity;
