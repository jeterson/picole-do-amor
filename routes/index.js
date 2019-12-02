module.exports = (io) => {

  let conn = require('./../inc/db');
  let express = require('express');
  let formidable = require('formidable');
  let router = express.Router();
  let textos = require('../inc/textos');

  let defaults = {
    title: 'Picolé do Amor!',
    headerIndex: false
  };

  let defaultsReservation = {
    title: 'Agende - Picolé do Amor!',
    header: {
      background: 'images/img_bg_2.jpg',
      title: 'Agende uma Conversa!'
    },
    body: {}
  };

  let defaultsContact = {
    title: 'Contato - Picolé do Amor!',
    header: {
      background: 'images/img_bg_3.jpg',
      title: 'Diga um oi!'
    },
    body: {}
  };

  router.get('/', async(req, res, next) => {

    frase = await textos.getFrase();
    sucesso = await textos.getNossoSucesso();
    fraseprodpop = await textos.getFraseProdPop();
    comofunciona = await textos.getComoFunciona();

    conn.query(
      "SELECT * FROM tb_menus ORDER BY title",
      (err, results, fields) => {

        res.render('index', Object.assign({}, defaults, {
          title: 'Picolé do Amor!',
          menus: results,
          headerIndex: true,
          frase,
          sucesso,
          fraseprodpop,
          comofunciona
        }));

      }
    );

  });

  router.get('/contact', (req, res, next) => {

    res.render('contact', Object.assign({}, defaults, defaultsContact));

  });

  router.post('/contact', (req, res, next) => {

    let render = (error, success) => {

      res.render('contact', Object.assign({}, defaults, defaultsContact, {
        body: req.body,
        success,
        error
      }));

    };

    if (!req.body.name) {

      render('Preencha o campo Nome.');

    } else if (!req.body.email) {

      render('Preencha o campo E-mail.');

    } else if (!req.body.message) {

      render('Preencha o campo Mensagem.');

    } else {

      conn.query(
        "INSERT INTO tb_contacts (name, email, message) VALUES(?, ?, ?)",
        [
          req.body.name,
          req.body.email,
          req.body.message
        ],
        (err, results) => {

          if (err) {
            render(err);
          } else {

            io.emit('reservations update', req.body);

            req.body = {};

            render(null, 'Contato enviado com sucesso!');

          }

        }
      );

    }

  });

  router.get('/menu', async(req, res, next) => {

    frase = await textos.getFrase();
    
    conn.query(
      "SELECT * FROM tb_menus ORDER BY title",
      (err, results, fields) => {

        res.render('menu', Object.assign({}, defaults, {
          title: 'Destinos - Picolé do Amor!',
          header: {
            background: 'images/img_bg_1.jpg',
            title: 'De uma Olhada em Nossos Produtos!'
          },
          menus: results,
          frase
        }));

      });

  });

  router.get('/reservation', (req, res, next) => {

    res.render('reservation', Object.assign({}, defaults, defaultsReservation));

  });

  router.post('/reservation', (req, res, next) => {

    let render = (error, success) => {

      res.render('reservation', Object.assign({}, defaults, defaultsReservation, {
        body: req.body,
        success,
        error
      }));

    };

    if (!req.body.name) {

      render('Preencha o campo Nome.');

    } else if (!req.body.email) {

      render('Preencha o campo E-mail.');

    } else if (!req.body.people) {

      render('Selecione a quantidade de pessoas.');

    } else if (!req.body.date.trim()) {

      render('Selecione o dia da reserva.');

    } else if (!req.body.time.trim()) {

      render('Selecione a hora da reserva.');

    } else {

      let date = req.body.date.split('/');
      date = `${date[2]}-${date[1]}-${date[0]}`;
      req.body.date = date;

      conn.query(
        "INSERT INTO tb_reservations (name, email, people, date, time) VALUES(?, ?, ?, ?, ?)",
        [
          req.body.name,
          req.body.email,
          req.body.people,
          req.body.date,
          req.body.time
        ],
        (err, results) => {

          if (err) {
            render(err);
          } else {

            io.emit('reservations update', req.body);

            req.body = {};

            render(null, 'Reserva realizada com sucesso!');

          }

        }
      );

    }

  });

  router.post('/subscribe', (req, res, next) => {

    let form = new formidable.IncomingForm();

    form.parse(req, (err, fields, files) => {

      if (!fields.email) {

        res.status(400);
        res.send({
          error: 'Preencha o campo e-mail.'
        });

      } else {

        conn.query(
          "INSERT INTO tb_emails (email) VALUES(?)",
          [
            fields.email
          ],
          (err, results) => {

            if (err) {

              res.status(400);
              res.send({
                error: err
              });

            } else {

              io.emit('reservations update', fields);

              res.send(results);

            }

          }
        );

      }

    });

  });

  router.get('/services', async(req, res, next) => {

    frase = await textos.getFrase();

    res.render('services', Object.assign({}, defaults, {
      title: 'Serviço - Picolé do Amor!',
      header: {
        background: 'images/img_bg_1.jpg',
        title: 'É um prazer poder servir!',
        frase
      }
    }));

  });

  return router;

};