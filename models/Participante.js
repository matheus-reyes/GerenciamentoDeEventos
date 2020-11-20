let Participante = (sequelize, Datatypes) => {
    let participante = sequelize.define(
        'Participante', 
        {
            cpf:{
                type: Datatypes.BIGINT,
                primaryKey: true,
                allowNull: false,
                autoIncrement: true
            },
            nome:{
                type: Datatypes.STRING,
                allowNull: false
            },
            cep:{
                type: Datatypes.INT,
                allowNull: false
            },
            e_mail:{
                type: Datatypes.STRING,
                allowNull: false
            },
            telefone:{
                type: Datatypes.INT,
                allowNull: false
            },
            Staff:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Palestrante:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Ouvinte:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Organizador:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Staff:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Ministrante_tutoria:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Instrutor:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Avaliador:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Autor_Artigo:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            }
        },
        {
            tableName: "participante",
            timestamps: false
        }
    )

    return participante;

}

module.exports = Participante;