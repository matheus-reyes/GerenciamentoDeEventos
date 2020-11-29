const {Entidade, Ingresso, Participante, Evento, Promotora} = require("../models");
const bcrypt = require("bcrypt");

module.exports = {

    inicio: (req, res) => {

        res.render("promotora/inicio");

    },

    eventosPromotora: async (req, res) => {

        //Pega os dados da promotora pela session
        const usuario = req.session.usuario;

        //Dados dos eventos da promotora
        const eventos = await Evento.findAll({
            where: {
                PRO_cnpj:usuario.cnpj
            }
		});

        res.render("promotora/inicio", {eventos});

    },

    criarEventoPromotora: (req, res) => {

        res.render("promotora/criarEvento");

    },

    contaPromotora: (req, res) => {

        const usuario = req.session.usuario;

        res.render("promotora/conta", {usuario});

    },

    cadastroEvento: async (req, res) => {

        const usuario = req.session.usuario;
        
        // Dados do formulário
        const nome = req.body.nome;
        const tema = req.body.tema;
        const edicao = req.body.edicao;
        const data_inicio = req.body.data_inicio;
        const data_fim = req.body.data_fim;
        const cnpj = '7755256000158';

        //Insere os dados na tabela Ingresso
        await Evento.create({
            nome,
            tema,
            edicao,
            data_inicio,
            data_fim,
            cnpj,
            PRO_cnpj: usuario.cnpj
        });

        //Dados dos eventos da promotora
        const eventos = await Evento.findAll({
            where: {
                PRO_cnpj:usuario.cnpj
            }
		});

        res.render("promotora/inicio", {eventos});

    },

    editarEvento: async (req, res) => {

        const usuario = req.session.usuario;

        // Dados do formulário
        const nome = req.body.nome;
        const tema = req.body.tema;
        const edicao = req.body.edicao;
        const data_inicio = req.body.data_inicio;
        const data_fim = req.body.data_fim;

        //Faz a alteração do evento
        await Evento.update({
            nome,
            tema,
            edicao,
            data_inicio,
            data_fim
        },
        {
            where:{
                PRO_cnpj:usuario.cnpj
            }
        });

        //Dados dos eventos da promotora
        const eventos = await Evento.findAll({
            where: {
                PRO_cnpj:usuario.cnpj
            }
		});

        res.render("promotora/inicio", {eventos});

    },


    apagarEvento: async (req, res) => {

        const usuario = req.session.usuario;

        const id_evento = req.body.id_evento;

        //apaga os ingressos do Evento
        await Ingresso.destroy({
			where:{
				id_evento
			}
        });

        //apaga o evento
        await Evento.destroy({
			where:{
				id_evento,
			}
        });

        //Dados dos eventos da promotora
        const eventos = await Evento.findAll({
            where: {
                PRO_cnpj:usuario.cnpj
            }
		});

        res.render("promotora/inicio", {eventos});
    },

    editarPromotora: async (req, res) => {

        const usuario = req.session.usuario;

        // Valores recuparados do Formulário
        const cnpj = req.body.cnpj;
        const nome_entidade = req.body.nome_entidade;
        const end_estado = req.body.end_estado;
        const end_cidade = req.body.end_cidade;
        const end_cep = req.body.end_cep;
        const end_logradouro = req.body.end_logradouro;
        const end_numero = req.body.end_numero;
        const email = req.body.email;
        const password = req.body.password;
        const confirmpassword = req.body.confirmpassword;

        // Se a senha bate com a confirmação de senha
        if(password == confirmpassword){
            // Se o usuário não digitou uma senha, a senha não é alterada
            if(password == ""){

                //Faz a alteração da entidade, sem a senha
                await Entidade.update({
                    cnpj,
                    nome_entidade,
                    end_estado,
                    end_cidade,
                    end_logradouro,
                    end_cep,
                    end_numero,
                    email
                },
                {
                    where:{
                        cnpj:usuario.cnpj
                    }
                });

            }else{
                
                //Faz a alteração da entidade, com a senha
                await Entidade.update({
                    cnpj,
                    nome_entidade,
                    end_estado,
                    end_cidade,
                    end_logradouro,
                    end_cep,
                    end_numero,
                    email,
                    senha: bcrypt.hashSync(password, 10)
                },
                {
                    where:{
                        cnpj:usuario.cnpj
                    }
                });

            }

            //Dados dos eventos da promotora
            const eventos = await Evento.findAll({
                where: {
                    PRO_cnpj:usuario.cnpj
                }
            });

            res.render("promotora/inicio", {usuario, eventos});
        
        }else{

            res.render("promotora/conta", {usuario});

        }

    },

    apagarPromotora: async (req, res) => {

        const usuario = req.session.usuario;

        //apaga os eventos da promotora
        await Evento.destroy({
			where:{
				PRO_cnpj:usuario.cnpj
			}
        });

        //apaga a promotora
        await Promotora.destroy({
			where:{
				cnpj:usuario.cnpj
			}
        });

        //apaga a entidade
        await Entidade.destroy({
            where:{
                cnpj:usuario.cnpj
            }
        });

        res.render("login");

    }

}