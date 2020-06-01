var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/products", function(req, res) {
    db.products.findAll({}).then(function(dbproducts) {
      res.json(dbproducts);
    });
  });

  // Create a new example
  app.post("/api/products/:id", function(req, res) {
    db.products
      .findOne({ where: { id: req.params.id } })
      .then(function(dbproducts) {
        res.json(dbproducts);
      });
  });

  // // Delete an example by id
  // app.delete("/api/examples/:id", function(req, res) {
  //   db.Example.destroy({ where: { id: req.params.id } }).then(function(
  //     dbExample
  //   ) {
  //     res.json(dbExample);
  //   });
  // });
};
