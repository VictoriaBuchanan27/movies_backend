const pgp = require('pg-promise')

const getDbConnect = (function() {
    let dbConnect = null;
    return function(dbAddr) {
        if (!dbConnect) {
            dbConnect = pgp({})(dbAddr)
        }

        return dbConnect;
    }
})(); 

module.exports = {getDbConnect,}