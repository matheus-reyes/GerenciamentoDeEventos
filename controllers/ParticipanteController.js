const {Ingresso, Participante, Evento} = require("../models");
const bcrypt = require("bcrypt");

module.exports = {

    inicio: async (req, res) => {

        // Salva todos os eventos
        const eventos = await Evento.findAll();

        res.render("participante/inicio", {eventos});

    },

    todosEventosParticipante: async (req, res) => {

        // Salva todos os eventos
        const eventos = await Evento.findAll();

        res.render("participante/inicio", {eventos});

    },

    eventosParticipante: async (req, res) => {

        //Pega os dados do participante pela session
        const usuario = req.session.usuario;

        //Dados do participante e dos eventos que ele faz parte
        const participanteEventos = await Participante.findByPk(usuario.cpf, {
            include:{
                model: Evento,
                as:'eventos'
            }
        });

        res.render("participante/eventos", {eventos: participanteEventos.eventos});

    },

    contaParticipante: (req, res) => {

        const usuario = req.session.usuario;

        res.render("participante/conta", {usuario});

    },

    inscricaoEvento: async (req, res) => {

        //Pega os dados do participante pela session
        const usuario = req.session.usuario;
        const idEvento = req.body.idEvento;
        const forma_pagamento = "cartão";
        const data = "2020-12-01";
        const desconto = 10.00;
        const numero_lote = 1;

        //Insere os dados na tabela Ingresso
        await Ingresso.create({
            cpf: usuario.cpf,
            id_evento: idEvento,
            forma_pagamento,
            data,
            desconto,
            numero_lote
        });

        //Dados do participante e dos eventos que ele faz parte
        const participanteEventos = await Participante.findByPk(usuario.cpf, {
            include:{
                model: Evento,
                as:'eventos'
            }
        });

        res.render("participante/eventos", {eventos: participanteEventos.eventos});

    },

    editarParticipante: async (req, res) => {

        const usuario = req.session.usuario;
        // Valores recuparados do Formulário
        const nome = req.body.nome;
        const cpf = req.body.cpf;
        const telefone = req.body.telefone;
        const cep = req.body.cep;
        const e_mail = req.body.email;
        const password = req.body.password;
        const confirmpassword = req.body.confirmpassword;

        // Salva todos os eventos
        const eventos = await Evento.findAll();

        // Se a senha bate com a confirmação de senha
        if(password == confirmpassword){
            // Se o usuário não digitou uma senha, a senha não é alterada
            if(password == ""){
                await Participante.update({
                    nome,
                    cpf,
                    telefone,
                    cep,
                    e_mail
                },
                {
                    where:{
                        cpf:usuario.cpf
                    }
                });

            // Se o usuário digitou uma senha, ela é alterada
            }else{
                await Participante.update({
                    nome,
                    cpf,
                    telefone,
                    cep,
                    e_mail,
                    senha: bcrypt.hashSync(password, 10)
                },
                {
                    where:{
                        cpf:usuario.cpf
                    }
                });
            }

            res.render("participante/inicio", {eventos});

        // Se não bate
        }else{
            res.render("participante/conta", {usuario});
        }

    },

    apagarParticipante: async (req,res) => {

        const usuario = req.session.usuario;

        //apaga os ingressos do Participante
        await Ingresso.destroy({
			where:{
				cpf:usuario.cpf,
			}
        });

        //apaga o participante
        await Participante.destroy({
			where:{
				cpf:usuario.cpf,
			}
        });
        
        res.render("login");

    }

}