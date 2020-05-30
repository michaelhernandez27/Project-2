module.exports = function(sequelize, DataTypes) {
  var Products = sequelize.define("products", {
    name: DataTypes.STRING,
    price: DataTypes.DECIMAL,
    inventory: DataTypes.INTEGER,
    rating: DataTypes.INTEGER,
    
  }, {
    timestamps: false
  })
  return Products;
};
