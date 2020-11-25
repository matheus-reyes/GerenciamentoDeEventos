let Entidade = (sequelize, Datatypes) => {
    let entidade = sequelize.define(
        'Entidade', 
        {
            cnpj:{
                type: Datatypes.BIGINT,
                primaryKey: true,
                allowNull: false
            },
            end_logradouro:{
                type: Datatypes.STRING,
                allowNull: false
            },
            end_cidade:{
                type: Datatypes.STRING,
                allowNull: false
            },
            end_estado:{
                type: Datatypes.STRING,
                allowNull: false
            },
            end_cep:{
                type: Datatypes.STRING,
                allowNull: false
            },
            end_numero:{
                type: Datatypes.STRING,
                allowNull: false
            },
            nome_entidade:{
                type: Datatypes.STRING,
                allowNull: false
            },
            email:{
                type: Datatypes.STRING,
                allowNull: false
            },
            senha:{
                type: Datatypes.STRING,
                allowNull: false
            },
            Promotora:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Patrocinadora:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            },
            Organizadora:{
                type: Datatypes.BOOLEAN,
                allowNull: false
            }
        },
        {
            tableName: "entidade",
            timestamps: false
        }
    )

    entidade.associate = (models) => {

        entidade.hasMany(
            models.Promotora,
            {
                foreignKey: 'cnpj',
                as: 'promotora'
            }
        );

    }

    return entidade;

}

module.exports = Entidade;