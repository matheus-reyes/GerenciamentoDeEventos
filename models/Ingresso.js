let Ingresso = (sequelize, Datatypes) => {
    let ingresso = sequelize.define(
        'Ingresso', 
        {
            numero_ingresso:{
                type: Datatypes.INTEGER,
                primaryKey: true,
                allowNull: false,
                autoIncrement: true
            },
            forma_pagamento:{
                type: Datatypes.STRING,
                allowNull: false
            },
            data:{
                type: Datatypes.DATE,
                allowNull: false
            },
            desconto:{
                type: Datatypes.FLOAT,
                allowNull: false
            },
            numero_lote:{
                type: Datatypes.INTEGER,
                allowNull: false
            },
            cpf:{
                type: Datatypes.BIGINT,
                allowNull: false
            },
            id_evento:{
                type: Datatypes.INTEGER,
                allowNull: false
            }
        },
        {
            tableName: "ingresso",
            timestamps: false
        }
    )

    ingresso.associate = (models) => {

        ingresso.belongsTo(
            models.Evento,
            {
                foreignKey: 'id_evento',
                as: 'evento',
            }
        );
        
        ingresso.belongsTo(
            models.Participante,
            {
                foreignKey: 'cpf',
                as: 'participante',
            }
        );

        ingresso.belongsTo(
            models.Lote,
            {
                foreignKey: 'numero_ingresso',
                as: 'ingresso'
            }
        );
    }

    return ingresso;

}

module.exports = Ingresso;