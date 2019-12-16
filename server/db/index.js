const mysql = require('mysql')
let con;

function Open(app) {
    return new Promise((resolve, reject) => {
        con = mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: '',
            database: 'project_shop',
            timezone: 'utc'
        });
        con.connect((err) => {
            if (err) {
                con.end()
                reject(err)
            } else {
                console.log('DB Connected.')
                app.set('CONNECTION', con);
                resolve(true);
            }
        })
    });
}

function Close() {
    con.end();
}

module.exports = { Open, Close }