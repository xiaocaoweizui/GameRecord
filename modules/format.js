
const dayjs = require('dayjs');
var weekOfYear = require('dayjs/plugin/weekOfYear')

dayjs.extend(weekOfYear);

var format = {
    returnJson: function (res, err, data) {
        if (!err) {
            res.json({
                code: '200',
                msg: "success",
                data: data
            });
        } else {
            res.json({
                code: "500",
                msg: "failed",
                err: err
            })
        }
    },
    formatDate: function (date) {
        return dayjs(date).format('YYYY-MM-DD HH:mm:ss');
    },
    now: function () {
        return dayjs().format('YYYY-MM-DD HH:mm:ss');
    },
    week(date) {
        return dayjs(date).week();
    },
    getWeekRange(date) {
        var day = dayjs(date).day();
        //  console.log(`${day},${date}` );
        var startDate = dayjs(date).add(0 - day, 'day').format('YYYY-MM-DD');
        var endDate = dayjs(date).add(6 - day, 'day').format('YYYY-MM-DD');
        return startDate + "~" + endDate;
    },
    deepCopy(obj) {
        if (typeof obj !== 'object' || obj === null) {
            return obj;
        }

        let copy;
        if (Array.isArray(obj)) {
            copy = [];
            for (let i = 0; i < obj.length; i++) {
                copy[i] = this.deepCopy(obj[i]);
            }
        } else {
            copy = {};
            for (let key in obj) {
                if (obj.hasOwnProperty(key)) {
                    copy[key] = this.deepCopy(obj[key]);
                }
            }
        }

        return copy;
    }

}

module.exports = format;