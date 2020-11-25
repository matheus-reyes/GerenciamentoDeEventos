const {Entidade, Participante} = require("../models");
const bcrypt = require("bcrypt");

module.exports = {

    //função para carregar a página de login
    login: (req, res) => {

        res.render("login");

    },

    //função para realizar o login
    loginForm: async (req, res) => {

        //captura os valores do formulário
        let email = req.body.email;
        let senha = req.body.password;

        //encontra todos os participantes
        const participantes = await Participante.findAll();

        //encontra todas as promotoras (Entidades)
        const promotoras = await Entidade.findAll();

        //percorre os participantes
        for(let i = 0; i < participantes.length; i++){

            //se o e-mail e senha informados batem com os dados de algum participante
            if(participantes[i].e_mail == email && bcrypt.compareSync(senha, participantes[i].senha)){
                
                // Salva as Informações do usuário na session
                req.session.usuario = participantes[i];

                // Redireciona ao início do participante com seus dados
                res.render("participante/inicio", {usuario:req.session.usuario});

            }
        }

        //percorre as promotoras
        for(let i = 0; i < promotoras.length; i++){

            //se o e-mail e senha informados batem com os dados de algum participante
            if(promotoras[i].email == email && bcrypt.compareSync(senha, promotoras[i].senha)){
                
                // Salva as Informações do usuário na session
                req.session.usuario = promotoras[i];

                // Redireciona ao início do participante com seus dados
                res.render("promotora/inicio", {usuario:req.session.usuario});

            }
        }

        //Se não foi encontrado nenhum usuário, redireciona ao login
        res.render("login");

    }

}