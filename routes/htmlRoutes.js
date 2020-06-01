var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    db.products.findAll({}).then(function(dbproducts) {
      console.log(dbproducts);
      res.render("index", {
        products: dbproducts
      });
    });
  });

  //Load example page and pass in an example by id
  app.get("/form/:id", function(req, res) {
    db.products
      .findOne({ where: { id: req.params.id } })
      .then(function(dbproducts) {
        res.render("indexForm", {
          products: dbproducts
        });
        console.log(dbproducts);
      });
  });

  // // Render 404 page for any unmatched routes
  // app.get("*", function(req, res) {
  //   res.render("404");
  // });
};
