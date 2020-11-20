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

    return promotora;

}

module.exports = Promotora;