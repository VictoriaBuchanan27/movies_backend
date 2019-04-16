const {getApp,} = require('./app')

getApp().listen(3000, () => {
    console.log('listening on port 3000')
});