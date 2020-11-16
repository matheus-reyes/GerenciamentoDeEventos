module.exports = {

    cadastro: (req, res) => {

        res.render("cadastro");

    },

    cadastroParticipante: (req, res) => {

        res.redirect("/inicioParticipante");

    },

    cadastroPromotora: (req, res) => {

        res.redirect("/inicioPromotora");

    }

}