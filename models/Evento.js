let Evento = (sequelize, Datatypes) => {
    let evento = sequelize.define(
        'Evento', 
        {
            id_evento:{
                type: Datatypes.INTEGER,
                primaryKey: true,
                allowNull: false,
                autoIncrement: true
            },
            nome:{
                type: Datatypes.STRING,
                allowNull: false
            },
            tema:{
                type: Datatypes.STRING,
                allowNull: false
            },
            edicao:{
                type: Datatypes.TINYINT,
                allowNull: false
            },
            data_inicio:{
                type: Datatypes.DATE,
                allowNull: false
            },
            data_fim:{
                type: Datatypes.DATE,
                allowNull: false
            },
            cnpj:{
                type: Datatypes.BIGINT,
                allowNull: false
            },
            PRO_cnpj:{
                type: Datatypes.BIGINT,
                allowNull: false
            }
        },
        {
            tableName: "evento",
            timestamps: false
        }
    )

    evento.associate = (models) => {

        evento.belongsToMany(
            models.Participante,
            {
                foreignKey: 'id_evento',
                as: 'evento',
                through: models.Ingresso
            }
        );

        evento.belongsTo(
            models.Promotora, 
            {
                foreignKey: 'PRO_cnpj',
                as: 'promotora'
            }
        );

    }

    return evento;

}

module.exports = Evento;