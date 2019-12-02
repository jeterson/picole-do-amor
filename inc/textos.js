var conn = require("./db");


module.exports = {


    getFrase() {

        return new Promise((resolve, reject) => {


            conn.query(`select * from frasegrande`, (err, results) => {

                if (err) {
                    reject(err);
                } else {
                    resolve(results[0]);
                }
            });

        });

    },

    getNossoSucesso() {

        return new Promise((resolve, reject) => {


            conn.query(`select * from nossosucesso`, (err, results) => {

                if (err) {
                    reject(err);
                } else {
                    resolve(results[0]);
                }
            });

        });

    },

    getFraseProdPop() {

        return new Promise((resolve, reject) => {


            conn.query(`select * from fraseprodutos`, (err, results) => {

                if (err) {
                    reject(err);
                } else {
                    resolve(results[0]);
                }
            });

        });

    },

    getComoFunciona() {

        return new Promise((resolve, reject) => {


            conn.query(`select * from comofunciona`, (err, results) => {

                if (err) {
                    reject(err);
                } else {
                    resolve(results[0]);
                }
            });

        });

    }

}
