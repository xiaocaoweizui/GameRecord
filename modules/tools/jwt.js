//npm install jsonwebtoken
var jwt = require('jsonwebtoken');

const  SECRET_KEY = 'xiaocaoweizui04';
const  TOKEN_EXPIRES_IN = 60*60*1;

module.exports = {
    SECRET_KEY,
    TOKEN_EXPIRES_IN,
    jwt,
    generateToken: function (payload) {
        const  token =jwt.sign(payload, SECRET_KEY, {expiresIn: TOKEN_EXPIRES_IN});
        return token;
    }
}
