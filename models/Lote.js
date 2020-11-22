let Lote = (sequelize, Datatypes) => {
    let lote = sequelize.define(
        'Lote', 
        {
            numero_lote:{
                type: Datatypes.INTEGER,
                primaryKey: true,
                allowNull: false
            },
            valor:{
                type: Datatypes.FLOAT,
                allowNull: false
            }
        },
        {
            tableName: "lote",
            timestamps: false
        }
    )

    lote.associate = (models) => {

        lote.hasOne(
            models.Ingresso,
            {
                foreignKey: 'numero_ingresso',
                as: 'ingresso'
            }
        );

    }

    return lote;

}

module.exports = Lote;