const {Promotora, Participante} = require("../models");

module.exports = {

    cadastro: (req, res) => {

        res.render("cadastro");

    },

    cadastroParticipante: async (req, res) => {

        let participante = await Participante.findAll();

        console.log(participante);

        // res.redirect("/inicioParticipante");

    },

    cadastroPromotora: (req, res) => {

        res.redirect("/inicioPromotora");

    }

}