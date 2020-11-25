let Promotora = (sequelize, Datatypes) => {
    let promotora = sequelize.define(
        'Promotora', 
        {
            cnpj:{
                type: Datatypes.BIGINT,
                primaryKey: true,
                allowNull: false
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

        promotora.belongsTo(
            models.Entidade, 
            {
                foreignKey: 'cnpj',
                as: 'entidade'
            }
        );

    }

    return promotora;

}

module.exports = Promotora;