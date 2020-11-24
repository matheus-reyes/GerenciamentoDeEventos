const {Promotora, Participante} = require("../models");
const bcrypt = require("bcrypt");

module.exports = {

    login: (req, res) => {

        res.render("login");

    },

    loginForm: async (req, res) => {

        let email = req.body.email;
        let senha = req.body.password;

        const participantes = await Participante.findAll();

        for(let i = 0; i < participantes.length; i++){
            if(participantes[i].email == email){
                console.log(participantes[i].nome);
            }            
        }

        // && bcrypt.compareSync(senha, participantes[i].senha)

    }

}