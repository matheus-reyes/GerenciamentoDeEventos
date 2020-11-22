let Promotora = (sequelize, Datatypes) => {
    let promotora = sequelize.define(
        'Promotora', 
        {
            cnpj:{
                type: Datatypes.BIGINT,
                primaryKey: true,
                allowNull: false,
                autoIncrement: true
            }
        },
        {
            tableName: "promotora",
            timestamps: false
        }
    )

    promotora.associate = (models) => {

        promotora.hasMany(
            models.Evento,
            {
                foreignKey: 'PRO_cnpj',
                as: 'promotora'
            }
        );

    }

    return promotora;

}

module.exports = Promotora;