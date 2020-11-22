const {Promotora, Participante} = require("../models");
const bcrypt = require('bcrypt');

module.exports = {

    cadastro: (req, res) => {

        res.render("cadastro");

    },

    cadastroParticipante: async (req, res) => {

        // Atributos Formulário
        const nome = req.body.nome;
        const cpf = req.body.cpf;
        const telefone = req.body.telefone;
        const cep = req.body.cep;
        const e_mail = req.body.email;
        const password = req.body.password;
        const confirmpassword = req.body.confirmpassword;
        const Staff = false;
        const Palestrante = false;
        const Ouvinte = true;
        const Organizador = false;
        const Ministrante_tutoria = false;
        const Instrutor = false;
        const Avaliador = false;
        const Autor_Artigo = false;

        //criptografa a senha com bcrypt
        let senhaCriptografada = bcrypt.hashSync(password, 10);

        //compara se as senhas são iguais
        if(bcrypt.compareSync(confirmpassword, senhaCriptografada)){
            
            await Participante.create({
                cpf,
                nome,
                cep,
                e_mail,
                telefone,
                Staff,
                Palestrante,
                Ouvinte,
                Organizador,
                Ministrante_tutoria,
                Instrutor,
                Avaliador, 
                Autor_Artigo
            });

        //se não são iguais, redireciona ao cadastro novamente
        }else{
            res.redirect("/cadastro");
        }

        res.redirect("/inicioParticipante");

    },

    cadastroPromotora: (req, res) => {

        res.redirect("/inicioPromotora");

    }

}